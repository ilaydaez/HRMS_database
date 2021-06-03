# HumanResourcesManagementSystem_Database Modeling

HumanResourcesManagementSystem için SQL veritabanı modellemesi yapıldı. 

Veritabanı için tablolar oluşturuldu ve modelemesi gerçekleştirildi.

## :clipboard: Tables

Sistem için 5 tablo oluşturuldu.

&nbsp;&nbsp;1. users : tüm entity için ortak fieldlerin bulunduğu tablodur. <br>
&nbsp;&nbsp;2. employees : sistemde iş arayanları temsil eden tablodur. İş arayan kullanıcıların özelliklerini tutar. <br>
&nbsp;&nbsp;3. employers : sistemde iş verenleri temsil eden tablodur. İş veren kullanıcıların özelliklerini tutar. <br>
&nbsp;&nbsp;4. system_personnels : sistem çalışanlarıdır. HumanResourcesManagementSystem da çalışan personellerin özelliklerini tutar. <br>
&nbsp;&nbsp;5. job_positions : iş pozisyonlarının tutulduğu tablodur.

![tableImage](https://user-images.githubusercontent.com/77542051/118399371-8557ad80-b665-11eb-910f-34fbcb372453.png)

#### :clipboard: Tables Model

:key:primaryKey ve :old_key:foreignKey atamaları yapılar tablolar arası bağlantılar sağlandı.

![image](![image](https://user-images.githubusercontent.com/77542051/120633242-96305d80-c472-11eb-8568-63ae2dd6f765.png))

#### :clipboard: Tables Code

###### :clipboard: Users Table

Users tablosunda hiç bir özellik boş bırakılamaz. Bütün özellikler verilmek zorundadır.
:key:primaryKey olarak "id" özelliği atandı. Bu özellik `employees`, `employers` ve `system_personnels` tabloları için ortakdır. Bu tablolar id özelleiklerini `users` tablosundan çekmektedir.

![image](https://user-images.githubusercontent.com/77542051/118399909-1a5ba600-b668-11eb-8561-ff6f4343ddae.png)


###### :clipboard: Employees Table

Employees tablosunda "id" özelliği :key:primaryKey dir. Bu özellik `users` tablosu için :old_key:foreignKey dir. <br>
Employee için identity_number özelliği benzersiz bir özelliktir ve identity_number özelliği unique olarak atanmıştır. Unique sayesinde verilerin tekrarlanmasının önüne geçilmiştir.

![image](https://user-images.githubusercontent.com/77542051/118400070-bf767e80-b668-11eb-9036-e993b967bf7d.png)

###### :clipboard: Employers Table

Employers tablosunda "id" özelliği :key:primaryKey dir. Bu özellik `users` tablosu için :old_key:foreignKey dir. <br>
Employer için company_name özelliği benzersiz bir özelliktir ve company_name özelliği unique olarak atanmıştır. Unique sayesinde verilerin tekrarlanmasının önüne geçilmiştir.

![image](https://user-images.githubusercontent.com/77542051/118400219-622efd00-b669-11eb-8391-9cdcc7487ffa.png)

###### :clipboard: System_personnels Table

System_personnels tablosunda "id" özelliği :key:primaryKey dir. Bu özellik `users` tablosu için :old_key:foreignKey dir. <br>

![image](https://user-images.githubusercontent.com/77542051/118400310-c2be3a00-b669-11eb-8b57-ea7394c52035.png)

###### :clipboard: Job_positions Table

Job_positions tablosunda "id" özelliği :key:primaryKey dir.

![image](https://user-images.githubusercontent.com/77542051/118400359-f5683280-b669-11eb-8089-dc13fa4d0fe1.png)

