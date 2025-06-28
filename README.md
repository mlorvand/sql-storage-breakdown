# SQL Server Table & Index Space Analyzer
# 📦 SQL Server Table & Index Space Analyzer

A professional T-SQL script to analyze the storage usage of user tables in SQL Server — including detailed breakdown of data size, index size, and total space per table.

---

## 🧠 Features

- Computes **data size**, **index size**, and **total space** used by each table.
- Calculates **row count**, and categorizes **LOB** and **row-overflow** pages.
- Returns results in **KB & MB** for easy monitoring.
- Ideal for **performance tuning**, **storage planning**, and **database optimization**.

---

## 💻 Tech Stack

- Microsoft SQL Server
- T-SQL
- SSMS (SQL Server Management Studio)

---

## 📊 Sample Output

| TableName     | RowCounts | TableSizeKB | IndexSizeKB | TotalSizeMB |
|---------------|-----------|-------------|-------------|-------------|
| Orders        | 250000    | 12,480      | 6,232       | 18.69       |
| Customers     | 55000     | 3,208       | 2,019       | 5.09        |

---

## 🏁 Usage

1. Open SQL Server Management Studio.
2. Paste the provided script into a new query window.
3. Execute the query against your target database.
4. Export the result if needed (CSV, Excel, etc.)

---

## 🌍 Multilingual Description

### 🇮🇷 فارسی
اسکریپت حرفه‌ای T-SQL برای آنالیز فضای مصرف‌شده توسط جداول کاربر در SQL Server — شامل تفکیک کامل حجم داده، ایندکس و فضای کل به تفکیک جدول. مناسب برای مانیتورینگ و بهینه‌سازی فضای پایگاه داده.

### 🇸🇦 العربية
سكريبت SQL لتحليل استخدام المساحة في جداول المستخدم داخل SQL Server، مع تقسيم حجم البيانات والفهارس والمساحة الإجمالية لكل جدول.

---

## 🏷️ Tags

`sql` `tsql` `sql-server` `table-size` `index-size` `storage-analysis` `database-performance` `dba` `sql-diagnostics`

---

## 👤 Author

**Mehdi Lorvand**  
🔗 [LinkedIn](https://www.linkedin.com/in/mahdi-lorvand-08aa151a4/)  
🐙 [GitHub](https://github.com/mlorvand)
