# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="40" height="30" /> 🎬 Cine Memory - نظام إدارة الأفلام<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="40" height="30" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![عرض توضيحي للاستخدام](./public/movieNew.gif)

![قيد التطوير](https://img.shields.io/badge/status-قيد%20التطوير-yellow)

<details>

<summary> <h2>نظرة عامة</h2> </summary>

هذا المشروع هو **نظام إدارة الأفلام** تم تطويره باستخدام Ruby on Rails. يسمح للمستخدمين بإدارة الأفلام، الأنواع، والمخرجين. يطبق CRUD (إنشاء، قراءة، تحديث، حذف) للكيانات ويسمح بتحميل صور لافتات الأفلام.

</details>

<details>

<summary> <h2>هيكل قاعدة البيانات</h2> </summary>

![مخطط](./public/diagrama-movies.png)

</details>

<details>

<summary> <h2>المكتبات المستخدمة</h2> </summary>

- Bullet (اكتشاف استعلامات N+1)  
خلال عملية التطوير، تُستخدم مكتبة Bullet لاكتشاف وتنبيه عدم الكفاءة في تحميل استعلامات SQL، مثل مشكلة استعلامات N+1.

- Kaminari (الترتيب)  
تُستخدم مكتبة Kaminari لترتيب السجلات في القوائم، مما يجعل التنقل عبر مجموعات البيانات الكبيرة أكثر كفاءة.

- Active Storage (إدارة الملفات)  
يستخدم التطبيق أيضًا Active Storage لتحميل وإدارة الملفات، مثل لافتات الأفلام.

</details>

<details>

<summary> <h2>إعداد المشروع</h2> </summary>

  <details>

<summary> <h2>باستخدام Docker</h2> </summary>

لتشغيل هذا المشروع باستخدام Docker، اتبع الخطوات أدناه:

#### المتطلبات المسبقة

تأكد من تثبيت Docker و Docker Compose على جهازك.

- [Docker](https://docs.docker.com/get-docker/)  
- [Docker Compose](https://docs.docker.com/compose/install/)

#### الإعداد

1. استنساخ المستودع ذي الصلة:

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. انتقل إلى مجلد المشروع:

```
   cd rails_movies_catalog
   ```

3. شغل الأمر Docker:

```
   docker-compose up
   ```

4. افتح المتصفح على:

```
   http://0.0.0.0:3000/
   ```

  </details>
  
  <details>

<summary>  <h2>بدون Docker</h2> </summary>

1. استنساخ المستودع:
   ```bash
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. انتقل إلى دليل المشروع:
   ```bash
   cd rails_movies_catalog
   ```

3. تثبيت الاعتماديات:
   ```bash
   bundle install
   ```

4. إعداد قاعدة البيانات:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. تشغيل التطبيق:
   ```bash
   rails server
   ```
   </details>

</details>

<details>

<summary> <h2>الميزات (المخطط لها)</h2> </summary>

- **إدارة الأفلام**: 
  - اختبارات وحدات
  - استجابة

</details>
