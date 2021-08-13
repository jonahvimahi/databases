# opening the um-server-01txt file and assigning it to a variable
log_file = open("um-server-01.txt")

# delclaring function calling sales report where the log_file is the parameter
def sales_reports(log_file):
    # for-loop in python(going through lines in the text file)
    for line in log_file:
        # wanting to get rid of trailing characters on the right
        line = line.rstrip()
        # specifiying where the day is located on the line
        day = line[0:3]
        # if the day is monday 
        if day == "MON":
            # then they want to print the entire line if it's true
            print(line)

# invoking the function
sales_reports(log_file)


# EXTRA CREDIT 

def melons(log_file):
    for line in log_file:
        line = line.rstrip().split(' ')
        count = int(line[2])
        if count > 10:
            print(line)


melons(log_file)