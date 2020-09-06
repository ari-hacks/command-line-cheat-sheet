#AWS CLI commands 

aws config                                        #configures aws cli
aws configure list                                #list all configuration data
aws configure list-profiles                       #list all profile names
aws s3 ls                                         #list s3 buckets
aws s3 ls s3://<bucket-name>                      #list bucket content 
aws s3 mb s3://<bucket-name>                      #create a bucket 
aws s3 rb s3://<bucket-name>                      #remove empty bucket 
aws s3 sync <Local> s3://<bucket-name>            #sync objects 
aws s3 cp <object> s3://<bucket-name>             #copy to a bucket 
aws s3 cp s3://<bucket-name>/<object><destination>    #copy from bucket 
aws s3 mv s3://<bucket-name>/<object><destination>    #move object
aws s3 rm s3://<bucket-name><object>                #remove objcet
aws s3 sync <Local> s3://<bucket>                   #sync objects between buckets/directories 






