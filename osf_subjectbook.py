import requests
import json
# All the useful variable
baseURL = "https://api.osf.io/v2/nodes/"
url2CC = "https://api.osf.io/v2/nodes/bgcqz/children/"
url2upload = "https://files.osf.io/v1/resources/aczsd/providers/osfstorage/"
#auth_header = {"Authorization": "Bearer 9AHS8YaqYHaOSxh0zhN2uF6Eepg0obqfnVxkDNV8mlIEwIiugaN6H8VGK8C7ZR4yEj1t5y","Content-Type": "application/vnd.api+json"}
#auth_header = {"Authorization": "Bearer 9AHS8YaqYHaOSxh0zhN2uF6Eepg0obqfnVxkDNV8mlIEwIiugaN6H8VGK8C7ZR4yEj1t5y","Content-Type": "application/vnd.api+json"}#Kodali
auth_header = {"Authorization": "Bearer RUhnM3Je768HzmWEfqSIh7FP7QXK8qrXYI2j3NRJ1daiPOpMBxckhkYBWUR9105wFbexiU","Content-Type": "application/vnd.api+json"}#Capstone
#project_uid = ""
subject_id_arr = []
print("OSF - SUBJECTBOOK")
studyName = input("Please enter study Name>")
subjectCount = input("Please enter the number of subjects>")
sessionCount = input("Please enter the number of sessions>")


def create_project():
    try:
        r = requests.post(url=baseURL,headers=auth_header,
                          json={'data':{'type':'nodes','attributes':
                                                        {'title' : studyName,
                                                            'category' : 'project',
                                                            'description' : 'Test project created'},
                                                     }})
        print(r.status_code)
        print(r.content)
        dict = json.loads(r.content.decode('utf-8'))
        project_uid = dict['data']['id']
        print(project_uid)
        url2Component = "https://api.osf.io/v2/nodes/" + project_uid + "/children/"
        print(url2Component)
        for i in range(0,int(subjectCount)):
            r = requests.post(url=url2Component,headers=auth_header,
                              json={"data":{"type":"nodes","attributes":
                                                            {"title" : studyName + "_" + "Subject" + str(i),
                                                                "category" : "",
                                                                "description" : "Test component created"},
                                                         }})
            print(r.status_code)
            print(r.content)
            dict = json.loads(r.content.decode('utf-8'))
            print(dict['data']['id'])
            component_uid = dict['data']['id']
            subject_id_arr.append(component_uid)
        print(subject_id_arr)
        for i in range(0,int(subjectCount)):
            for j in range(0,int(sessionCount)):
                url2CC = "https://api.osf.io/v2/nodes/" + subject_id_arr[i] + "/children/"
                print(url2CC)
                r = requests.post(url=url2CC,headers=auth_header,
                                      json={"data":{"type":"nodes","attributes":
                                                                    {"title" : studyName + "_" +subject_id_arr[i] + "_" +"Session"+ str(j),
                                                                        "category" : "",
                                                                        "description" : "Test component inside component created"},
                                                                 }})
                print(r.status_code)
                print(r.content)

    except requests.exceptions.RequestException():
        print("Error in creating the project")

if studyName == "":
    {
        print("Please Enter Valid Study Name")
    }
elif subjectCount == "":
    {
        print("Please Enter subjectcount")
    }
elif sessionCount == "":
    {
        print("Please Enter session count")
    }
else:
    {
        create_project()
    }

#create_component(project_uid)

