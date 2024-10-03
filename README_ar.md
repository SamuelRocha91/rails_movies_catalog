# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - نظام إدارة الأفلام <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91//rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![قيد التطوير](https://img.shields.io/badge/status-%D9%82%D9%8A%D8%AF%20%D8%A7%D9%84%D8%AA%D8%B7%D9%88%D9%8A%D8%B1-yellow)

## نظرة عامة

هذا المشروع هو **نظام إدارة الأفلام** تم تطويره باستخدام Ruby on Rails. يسمح للمستخدمين بإدارة الأفلام والأنواع والمخرجين. حاليًا، النظام في **مرحلة تطوير نشطة**، والهدف الرئيسي هو تقديم حل شامل لإدارة الأفلام مع ميزات CRUD (إنشاء، قراءة، تحديث، حذف) ورفع صور لافتات الأفلام.

## حالة المشروع

⚠️ **قيد التطوير**: هذا مشروع في مرحلة مبكرة، ولا تزال العديد من الميزات قيد التنفيذ. يتم إجراء تغييرات وتحسينات، لذا فإن النظام لم يكتمل بعد.

## هيكل قاعدة البيانات

![مخطط](./public/diagrama-movies.png)

## المكتبات المستخدمة
- **Bullet (كشف استعلامات N+1)**: أثناء التطوير، يتم استخدام مكتبة Bullet للكشف عن وتنبيه حول عدم كفاءة استعلامات SQL، مثل مشكلة استعلامات N+1.

- **Kaminari (التصفح)**: يتم استخدام مكتبة Kaminari لتصفح السجلات في القوائم، مما يجعل التنقل في مجموعات البيانات الكبيرة أكثر كفاءة.

- **Active Storage (إدارة الملفات)**: تستخدم التطبيق أيضًا Active Storage لرفع وإدارة الملفات، مثل لافتات الأفلام.

## الميزات (المخطط لها)

- **إدارة الأفلام**: 
  - العنوان
  - سنة الإصدار
  - المدة
  - الملخص
  - دولة المنشأ
  - رفع لافتات
  - حالة المسودة (تشير إلى ما إذا كان الفيلم في حالة مسودة أو منشور)

- **إدارة أنواع الأفلام**: ربط الأفلام بأنواعها الخاصة.

- **إدارة المخرجين**: 
  - الاسم
  - الجنسية
  - تاريخ الميلاد
  - النوع المفضل

## التثبيت

1. استنساخ المستودع:
   ```bash
   git clone <repository_url>
   ```

2. الانتقال إلى دليل المشروع:
   ```bash
   cd sistema-gerenciamento-filmes
   ```

3. تثبيت التبعيات:
   ```bash
   bundle install
   ```

4. إعداد قاعدة البيانات:
   ```bash
   rails db:create
   rails db:migrate
   ```

5. تشغيل التطبيق:
   ```bash
   rails server
   ```
