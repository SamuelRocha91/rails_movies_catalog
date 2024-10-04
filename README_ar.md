# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - موقع إدارة الأفلام<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" />

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![عرض توضيحي للاستخدام](./public/movies.gif)

![قيد التطوير](https://img.shields.io/badge/status-قيد%20التطوير-yellow)

## حالة المشروع

⚠️ **قيد التطوير**: هذا مشروع في مرحلة التطوير. المزيد من الميزات لا تزال قيد التنفيذ.

## نظرة عامة

هذا المشروع هو **نظام إدارة الأفلام** تم تطويره باستخدام Ruby on Rails. يسمح للمستخدمين بإدارة الأفلام، الأنواع، والمخرجين. يطبق CRUD (إنشاء، قراءة، تحديث، حذف) للكيانات وتحميل صور لافتات الأفلام.

## هيكل قاعدة البيانات

![مخطط](./public/diagrama-movies.png)

## الجواهر المستخدمة
- Bullet (كشف استعلامات N+1)  
خلال عملية التطوير، تُستخدم جواهر Bullet للكشف عن التحميلات غير الفعالة لاستعلامات SQL، مثل مشكلة استعلامات N+1.
- Kaminari (التقسيم)  
تُستخدم جواهر Kaminari لتقسيم السجلات في القوائم، مما يجعل التنقل في مجموعات البيانات الكبيرة أكثر كفاءة.
- Active Storage (إدارة الملفات)  
تستخدم التطبيق أيضًا Active Storage لتحميل وإدارة الملفات، مثل لافتات الأفلام.

## إعداد المشروع

### باستخدام Docker

لتشغيل هذا المشروع باستخدام Docker، اتبع الخطوات التالية:

#### المتطلبات الأساسية

تأكد من أن لديك Docker و Docker Compose مثبتين على جهازك.

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### الإعداد

1. استنساخ المستودع المعني:

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
```

2. انتقل إلى مجلد المشروع:

```
   cd rails_movies_catalog
```

3. تشغيل الأمر docker:

```
   docker-compose up
```

4. الوصول إلى المتصفح على:

```
   http://0.0.0.0:3000/
```

### بدون Docker

1. استنساخ المستودع:
   ```bash
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. الوصول إلى دليل المشروع:
   ```bash
   cd rails_movies_catalog
   ```

3. تثبيت التبعيات:
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

## الميزات (المخطط لها)

- **إدارة الأفلام**:
  - حالة المسودة (تشير إلى ما إذا كانت الفيلم في حالة مسودة أو منشور)؛
  - تصفية حسب التاريخ، إذا كان قد تم إصداره أم لا؛
  - إنشاء تحقق من حقل التاريخ وحقول أخرى؛
  - اختبارات وحدة؛
  - استجابة.
