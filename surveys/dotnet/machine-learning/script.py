# User, <=10 years: 0
# Developer, >10 years :1
# output
# A: 1
# B: 2
# Event: 3
# Null: 4
# Other: 5
# Kernel SVM
# Importing the libraries

import warnings
warnings.filterwarnings('ignore')

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Create classifiers
# Kernel SVM
from sklearn.svm import SVC
svm = SVC(kernel = 'rbf', random_state = 0)
# Random Forest Classification
from sklearn.ensemble import RandomForestClassifier
randomForest = RandomForestClassifier(n_estimators = 10, criterion = 'entropy', random_state = 0)
# K-NN
from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors = 5, metric = 'minkowski', p = 2)
# Logistic Regression
from sklearn.linear_model import LogisticRegression
regressao = LogisticRegression(random_state = 0)
# Naive Bayes
from sklearn.naive_bayes import GaussianNB
naive = GaussianNB()
# Decision Tree
from sklearn.tree import DecisionTreeClassifier
tree = DecisionTreeClassifier(criterion = 'entropy', random_state = 0)

classifiers = []
classifiers.append(svm)
classifiers.append(randomForest)
classifiers.append(knn)
classifiers.append(regressao)
classifiers.append(naive)
classifiers.append(tree)
classificadores = ['SVM','Random Forest','kNN','Logistic Regression','Naive Bayes','Decision Tree'] 

arquivos = []
# data source files
for i in range(7):
    arquivos.append('./q'+str(i+1)+'.csv')

countExt = 1
for arq in arquivos:
    # read file
    dataset = pd.read_csv(arq, sep=';')

# Pick some lines from dataset
# analyzing only users (0) or developers (1)
#    dataset= dataset.loc[dataset['type']==0]
# analyzing only <=10 years of experience (0) or >10 years (1)
    dataset= dataset.loc[dataset['experience']==0]
    
# Pick columns from dataset
# type and experience
    X = dataset.iloc[:, [0, 1]].values    
# type
#   X = dataset.iloc[:, [0]].values
# experience
#    X = dataset.iloc[:, [1]].values
    y = dataset.iloc[:, 2].values

    # Splitting the dataset into the Training set and Test set
    from sklearn.model_selection import train_test_split
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.25, random_state = 0)

    # Feature Scaling
    from sklearn.preprocessing import StandardScaler
    sc = StandardScaler()
    X_train = sc.fit_transform(X_train)
    X_test = sc.transform(X_test)

    count = 0
    for c in classifiers:
        # Fit
        c.fit(X_train, y_train)
        # Predicting the Test set results
        y_pred = c.predict(X_test)


        # Applying k-Fold Cross Validation
        from sklearn.model_selection import cross_val_score
        accuracies = cross_val_score(estimator = c, X = X_train, y = y_train, cv = 10)
        print('Question '+str(countExt)+', Classifier: '+classificadores[count]);
        print('Mean Accuracy = '+str(accuracies.mean()));
        #print('Minimo = '+str(accuracies.min()));
        #print('Maximo = '+str(accuracies.max()));
        #print('Desvio Padrao = '+str(accuracies.std()));
        print('Accuracies: '+str(accuracies));
        print('==============================================================')
        count+=1
    countExt +=1
