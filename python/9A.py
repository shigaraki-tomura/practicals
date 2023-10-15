from tkinter import *
import tkinter as t
m=t.Tk()
def display1():
    l=t.Label(m,text="Good Morning",bg='red',font=("Times 50"))
    l.pack()
def display():
    l1=t.Label(m,text="Good Morning",bg='blue',font=("Times 50"))
    l1.pack()
B=t.Button(m,text='ViewEffect blue',command=display,relief=SUNKEN)
B.pack()
B=t.Button(m,text='ViewEffect red',command=display1,relief=SUNKEN)
B.pack()
m.mainloop()
