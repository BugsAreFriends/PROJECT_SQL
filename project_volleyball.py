import tkinter as Tkinter


class BiddingButton:
    def __init__(self):
        self.root=Tkinter.Tk()
        self.root.title("Bidding Button")
        self.bid_amount=1
        self.create_widgets()

    def create_widgets(self):
        self.root.minsize(width=350, height=150)
        self.root.config(bg="yellow")
        self.bid_button=Tkinter.Button(self.root,text=f"Place Bid (${self.bid_amount})",command=self.place_bid,height=4,width=20,background="green")
        self.bid_button.pack()
        self.increment_button=Tkinter.Button(self.root,text="+",command=self.increment_bid,height=1,width=15,background="red")
        self.increment_button.pack(side="left",padx=30)
        self.decrement_button=Tkinter.Button(self.root,text="-",command=self.decrement_bid,height=1,width=15,background="red")
        self.decrement_button.pack(side="right",padx=30)


    def place_bid(self):
        print(f"you have a place of Bid of (${self.bid_amount}!)")

    def increment_bid(self):
        self.bid_amount+=1
        self.bid_button.config(text=f"Place Bid (${self.bid_amount})")


    def decrement_bid(self):
        if self.bid_amount>1:
            self.bid_amount -=1
            self.bid_button.config(text=f"Place Bid(${self.bid_amount})")

    def run(self):
        self.root.mainloop()

if  __name__ =="__main__":
    bidding_button=BiddingButton()
    bidding_button.run()
