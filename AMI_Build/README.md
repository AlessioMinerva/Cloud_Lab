## Exporting the target machine to EC2 instance

To export the target machine to your EC2 instance, follow these steps:

1. Make sure you are in the correct region by running the following command in Cloud Shell:

   ```
   export AWS_REGION=your_region
   ```
   
   Replace `your_region` with the region where you want to export the target machine.
   
2. Create a JSON file that specifies the image location and format. To create a new file, run the following command:

   ```
   nano image_container.json
   ```
   
   Copy the content of the file from this link and paste it into the file you just created: [image_container.json](https://github.com/AlessioMinerva/Cloud_Lab/blob/main/AMI_Build/image_container.json)
   
3. Create a trust policy file to allow you to import the VM image. To create a new file, run the following command:

   ```
   nano trust-policy.json
   ```
   
   Copy the content of the file from this link and paste it into the file you just created: [trust-policy.json](https://github.com/AlessioMinerva/Cloud_Lab/blob/main/AMI_Build/trust-policy.json)
   
4. Create a role for the policy you just created by running the following command:

   ```
   aws iam create-role --role-name vmimport --assume-role-policy-document "file://~/trust-policy.json"
   ```
   
5. Create a role policy file. To create a new file, run the following command:

   ```
   nano role-policy.json
   ```
   
   Copy the content of the file from this link and paste it into the file you just created: [role-policy.json](https://github.com/AlessioMinerva/Cloud_Lab/blob/main/AMI_Build/role-policy.json)
   
6. Attach the role policy file to the role you just created by running the following command:

   ```
   aws iam put-role-policy --role-name vmimport --policy-name vmimport --policy-document "file://~/role-policy.json"
   ```
   
7. Import the VM image by running the following command:

   ```
   aws ec2 import-image --description "My server VM" --disk-containers "file://~/image_container.json"
   ```
   
8. Check the status of the import task by running the following command:

   ```
   aws ec2 describe-import-image-tasks --import-task-ids import-ami-xxxxxxxxxxxxxxxxx
   ```
   
   Replace `import-ami-xxxxxxxxxxxxxxxxx` with the import task ID that was returned when you ran the previous command.
   
   This command will return information about the import task, including its current status. The import process can take several minutes or even hours, depending on the size of the VM image and your network speed.
   
9. If the status of the import task is "completed", you can move on. If it's still in progress, you can continue to check the status periodically until it's completed.
