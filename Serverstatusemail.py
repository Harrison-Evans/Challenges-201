#script name serverstatusemail
#by Harrison Evans
#date 10/6/21
#reason if it works or not, if the status changes there is a notifying email.
#references  https://www.tutorialspoint.com/send-mail-from-your-gmail-account-using-python
#references Josh Marburg, he got aid from new TA and help me out. 







# my fake password is fun right? 










#libraries
from email import message
from email.mime import text
import os
import time
from time import gmtime, strftime
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
#Variables
hostname = "8.8.8.8" #example
response = os.system("ping -c 1 " + hostname)
from_address ='harrisoncaldwellevans@gmail.com'
from_addresspassword= '1234icantget10/10onlabsanymore' #thoughtful pw, lol
to_address='harrisoncaldwellevans@gmail.com'
i=1 #server status

#main
while i <= 10: 
    time.sleep(2)
    d = strftime("%x %X", gmtime())
    message=MIMEMultipart()
    message['From']=from_address
    message['TO']=to_address
    message['Subject']='The Server Has A New Status'

    if response == 0:
        print(hostname, 'is up!', d)
    else:
        print(hostname,'is down!', d)
    if response != i:
        if response==0:
            mail_status=(hostname + " Is Now Operational " + d) #main email body
            message.attach(MIMEText(mail_status, 'plain')) #adding ^ to email
            session = smtplib.SMTP('smtp.gmail.com', 587) #from Lib gmail with port.
            session.starttls() #adds/enables security
            session.login(from_address, from_addresspassword)
            text = message.as_string() # new one for me, converts msg to string and assigns to text variable
            session.sendmail(from_address, to_address, text) #sends it
            session.quit()
        else:
            mail_status=(hostname + " Is Not Operational " + d)
            message.attach(MIMEText(mail_status, 'plain'))
            session = smtplib.SMTP('smtp.gmail.com', 587)
            session.starttls()
            session.login(from_address, from_addresspassword)
            text = message.as_string()
            session.sendmail(from_address, to_address, text)
            session.quit()
        i=response #changes my i variable to new status of ping
#end
