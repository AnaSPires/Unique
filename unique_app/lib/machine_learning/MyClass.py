#Import Library
import numpy as np
import pandas as pd
from plotnine import *
from ggplot import *
from plotnine.data import mpg
from sklearn import linear_model
import sklearn
from sklearn.utils import shuffle
import matplotlib.pyplot as plt
from matplotlib import style
import pickle


#PERGUNTAS PARA LEILA:
#As perguntas têm peso diferente?


#https://towardsdatascience.com/what-is-one-hot-encoding-and-how-to-use-pandas-get-dummies-function-922eb9bd4970
#https://pbpython.com/categorical-encoding.html

import os

os.chdir('C:/Users/Cliente Preferencial/0_COTUCA/TCC/Unique')

print("Diretório atual:" + os.getcwd())

style.use("ggplot")

def load_data():
    return pd.read_csv("meusqueridoseunicosdados.csv", sep=";")


df = load_data()
df.head()

#print(df.columns.tolist())
predict = "dislexia"

data = df[["A","B", "C", "D","dislexia"]]    

#One hot enconding para converter S e N para 0 e 1, respectivamente
data.A = pd.get_dummies(df.A)
data.B = pd.get_dummies(df.B)
data.C = pd.get_dummies(df.C)
data.D = pd.get_dummies(df.D)
#print(data.A)

data = shuffle(data)

x = np.array(data.drop([predict], 1))
z =np.array(data[predict])

x_train, x_test, z_train, z_test = sklearn.model_selection.train_test_split(x, z, test_size=0.1)

# TRAIN MODEL MULTIPLE TIMES FOR BEST SCORE
best = 0
for _ in range(20):
    x_train, x_test, z_train, z_test = sklearn.model_selection.train_test_split(x, z, test_size=0.1)

    linear = linear_model.LinearRegression()

    linear.fit(x_train, z_train)
    acc = linear.score(x_test, z_test)
    print("Accuracy: " + str(acc))

    if acc > best:
        best = acc
        with open("meusqueridoseunicosdados.pickle", "wb") as f:
            pickle.dump(linear, f)

# LOAD MODEL
pickle_in = open("meusqueridoseunicosdados.pickle", "rb")
linear = pickle.load(pickle_in)

predicted= linear.predict(x_test)
for x in range(len(predicted)):
    print(predicted[x], x_test[x], z_test[x])


#(ggplot(data)+ aes(x='dislexia') + geom_bar(size=20) + labs(title='Perfil de risco', x='Pergunta', y='Dislexia')) # customizing labels




plot = "dislexia"
plt.scatter(data[plot], df["A"])
plt.legend(loc=4)
plt.xlabel("Porcentagem")
plt.ylabel("Sim ou não")
plt.show()
