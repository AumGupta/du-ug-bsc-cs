'''
2.Consider a showroom of electronic products,where there are various
salesmen. Each salesman is given a commission of 5%, depending on the sales
made per month. Incase the sale done is less than 50000,then the salesman is
not given any commission. Write a function to calculate total sales of a salesman
in a month,commission and remarks for the salesman.Sales done by each
salesman per week is to be provided as input. Use tuples/list to store data of salesmen.
Assign remarks according to the following criteria:
Excellent:Sales>=80000
Good:Sales>=60000and<80000
Average:Sales>=40000and<60000
WorkHard:Sales<40000

Program by Om Gupta 214047
'''

from operator import indexOf


def salesman_info(weekly_sales):
    '''
    Returns list containing Monthly Sales, Commission and Remarks
    of a salesman
    '''
    sales = weekly_sales*4
    commission = sales*0.05 if sales>=50000 else 0
    remarks = "WorkHard"
    if sales>=40000:
        remarks = "Average"
        if sales>=60000:
            remarks = "Good"
            if sales>=80000:
                remarks = "Excellent"
    return [sales, commission, remarks]

def salesmen():
    '''
    Returns list of lists containing information of all salesmen
    '''
    n = int(input("Enter number of salesmen: "))
    assert n>=0
    salesman_list = []
    for i in range(n):
        weekly_sales = float(input("Enter weekly sales of Salesman %d: "%(i+1)))
        salesman_list.append((salesman_info(weekly_sales)))
    return salesman_list

def main():
    l = salesmen()
    n = 1
    for i in l:
        print("Salesman %d:\n\tSales: %d\n\tCommision: %d\n\tRemarks: %s\n"%(n,i[0],i[1],i[2]))
        n+=1
    
if __name__ == "__main__": 
    main()