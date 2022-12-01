def cumulative_list()->list:
    l = input("Enter Numbers (separated by space):")
    l = [int(x) for x in l.split()]
    return [sum(l[0:i]) for i in range(1,len(l)+1)]

def main():
    print(cumulative_list())

if __name__ == "__main__": 
    main()

