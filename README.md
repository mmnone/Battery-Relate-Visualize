# Battery-Relate-Visualize

## ไฟล์โค้ด .ipynb
* Main
     * Battery_Related_issue.ipynb - รวมโค้ดทุกอย่างที่ใช้ในการทำโปรเจคจากไฟล์โค้ดใน folder other_ipynb
* /other_ipynb/
     *  clean_data.ipynb                           : ใช้ในช่วงของการ clean ข้อมูล
     *  Embedding.ipynb                            : ใช้ในช่วงการทำ embedding เพื่อนำไปทำ clustering
     *  OpenAI_gpt.ipynb                           : ใช้ในช่วงของการให้ OpenAI แยกว่า cluster นั้นๆเป็น issue หรือไม่
     *  hdbscan_tt.ipynb                           : ทดลองทำ hdbscan 
     *  cookbook02132025_1025AM_Visualize_1.ipynb  : ทำ Clustering (K-means) กับ Visualize บางส่วน
     *  Visualize_2.ipynb                          : ทำ Visualize ส่วนที่เหลือ
     *  Word_Cloud.ipynb                           : ทำ WordCloud
  
## สำหรับการ Query ใน Google Big Query
* Query_DrainAndBattery_Data.sql
    * Query ใน public dataset - 'stackoverflow" 

## ไฟล์ทั้งหมดที่ใช้สำหรับไฟล์ ipynb 
* Battery_Related_issue.ipynb
    * big_query_data.csv
    * Data/Tag_Cluster.csv (ถ้าไม่ Run OpenAI)
    * output_issue_or_not.csv (ถ้าไม่ Run OpenAI)
    * [out_drain-bat_norm.json](https://drive.google.com/file/d/1g0n3Wk0aazGT3kUhOqOqviFB8szeyGNc/view?usp=sharing) (ไฟล์ Embedding.json ที่รันเก็บไว้ดาวน์โหลดได้ตรงนี้)
* /other_ipynb/
    * ไฟล์ทั้งหมดทีใช้อยู่ใน Link : [Link ไฟล์ทั้งหมดที่ใช้ใน folder /other_ipynb](https://drive.google.com/drive/folders/1kzTDXGw1mwWJLn7W6NfCy1ZehMMVORuo?usp=sharing)
 
## ไฟล์ที่ใช้ในโปรเจคนี้ทั้งหมด
*Link* : [ไฟล์ที่ใช้ในโปรเจคนี้ทั้งหมด](https://drive.google.com/drive/folders/1MqpncLVRAE96WZ3PwYE8HWc0EzuiVLW0?usp=sharing)

## ความคืบหน้าของงานในแต่ละสัปดาห์
*Link* : [รายงานความคืบหน้า](https://docs.google.com/document/d/1fHEKVuxavreSGxqcpLd9BKmsx0SfyE0l-1RLKNPilb8/edit?usp=sharing)
