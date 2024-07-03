
CREATE TABLE crops (
  `id` int(100) NOT NULL ,
  `name` varchar(100) NOT NULL,
  `season` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `desc` varchar(1500) NOT NULL,
  `productivity` varchar(150) NOT NULL
)

--
-- Dumping data for table crops
--

INSERT INTO crops (`id`,`name`,`season`, `category`, `image`,`desc`, `productivity`) VALUES
(11, 'টমেটো', 'Summer','সবজি', 'tomato.png','সাধারণত গ্রীষ্মের মরসুমে জন্মে, টমেটোর জন্য ভালোভাবে নিষ্কাশন করা মাটি এবং পূর্ণ সূর্যালোকের প্রয়োজন হয়। এগুলি চেরি, বিফস্টেক এবং রোমা সহ বিভিন্ন আকার এবং রঙে আসে','সাধারণত প্রতি একর 15-25 টন');
(12, 'সয়াবিন','Summer', 'কলাই', 'soya.png','সয়াবিন সাধারণত গ্রীষ্মের মৌসুমে চাষ করা হয়। তারা মাটিতে নাইট্রোজেন ঠিক করার ক্ষমতার জন্য পরিচিত, ফসলের ঘূর্ণনকে উপকৃত করে।','সাধারণত প্রতি একর 2-5 টন');
(13, 'আপেল', 'Fall','ফল', 'apple.jpg','আপেল গাছ নাতিশীতোষ্ণ জলবায়ুতে বৃদ্ধি পায় এবং সুনিষ্কাশিত মাটির প্রয়োজন হয়। বৈচিত্র্যের মধ্যে রয়েছে গ্র্যানি স্মিথ, রেড ডেলিশিয়াস এবং হানিক্রিস্প।','প্রায় 600-800 পাউন্ড');
(14, 'তুলা','Summer', 'ফাইবার','cotton.png','পর্যাপ্ত বৃষ্টিপাত সহ উষ্ণ আবহাওয়ায় তুলা ভাল জন্মে। একবার ফসল তোলার পর, তুলার তন্তুগুলিকে বীজ থেকে আলাদা করা হয় এবং টেক্সটাইল উৎপাদনে ব্যবহার করা হয়।','সাধারণত প্রতি একরে 600-1,200 পাউন্ড লিন্ট');
(15, 'কফি', 'Year-round','পানীয়', 'coffee.png','কফি প্রাথমিকভাবে গ্রীষ্মমন্ডলীয় অঞ্চলে ধারাবাহিকভাবে বৃষ্টিপাত হয়। আরবিকা এবং রোবাস্তা হল দুটি প্রধান ধরনের কফি মটরশুটি তৈরির জন্য ব্যবহৃত হয়','সাধারণত প্রতি একর কফি চেরি 2,000-3,000 পাউন্ড' );
(16, 'গম', 'Winter ','শস্য','Wheat.png', 'জাতের উপর নির্ভর করে শীত ও গ্রীষ্ম উভয় ঋতুতেই গম চাষ করা যায়। এটি অনেক ডায়েটে কার্বোহাইড্রেটের একটি গুরুত্বপূর্ণ উত্স।','সাধারণত প্রতি একরে 2-3 টন');
(17, 'ধান', 'Summer','শস্য', 'rice.png', 'ধান প্রাথমিকভাবে প্লাবিত বা জলাভূমিতে গ্রীষ্মের মৌসুমে উচ্চ জলের প্রাপ্যতাযুক্ত অঞ্চলে জন্মায়।', 'সাধারণত প্রতি একর 3-6 টন');
(18, 'ভুট্টা','Summer', 'শস্য', 'Maize.jpeg', 'সাধারণত গ্রীষ্মের মৌসুমে উষ্ণ আবহাওয়ায় জন্মায়। এটি কর্নমিল, কর্ন সিরাপ এবং পশুখাদ্যের প্রাথমিক উপাদান হিসাবে ব্যবহৃত হয়।','সাধারণত প্রতি একর 4-8 টন');
(19, 'আলু','Fall', 'সবজি', 'potato.png', 'আলু শীতল আবহাওয়ায় এবং ভাল-নিষ্কাশিত, আলগা মাটিতে ভাল জন্মে। জাতগুলির মধ্যে রয়েছে রাসেট, ইউকন গোল্ড এবং রেড ব্লিস।','সাধারণত 15-20 টন প্রতি একর');
(20, 'চিনাবাদাম','Summer', 'শস্য', 'peanut.png', 'চিনাবাদাম সাধারণত উষ্ণ আবহাওয়ায় জন্মায় এবং এর জন্য বালুকাময়, সুনিষ্কাশিত মাটির প্রয়োজন হয়। এগুলি প্রোটিন এবং স্বাস্থ্যকর চর্বির একটি গুরুত্বপূর্ণ উৎস','সাধারণত 2-4 টন প্রতি একর');
(21, 'আঙ্গুর','Fall', 'ফল', 'grape.png', 'আঙ্গুরের লতাগুলি নাতিশীতোষ্ণ জলবায়ুতে ভালভাবে নিষ্কাশন করা মাটির সাথে বৃদ্ধি পায়। জাতগুলির মধ্যে রয়েছে ক্যাবারনেট সভিগনন, চার্ডোনা এবং থম্পসন সিডলেস','সাধারণত 4-8 টন প্রতি একর');
(22, 'আখ','Year-round', 'সুগার', 'sugarcane.png', 'প্রচুর বৃষ্টিপাত এবং উষ্ণ তাপমাত্রা সহ গ্রীষ্মমন্ডলীয় অঞ্চলে আখ জন্মে। চিনি আহরণের জন্য এটি সংগ্রহ ও প্রক্রিয়াজাত করা হয়.','সাধারণত প্রতি একর 30-40 টন');
(23, 'কমলা','Winter', 'ফল', 'orange1jpg.jpg', 'কমলা গাছ উপক্রান্তীয় এবং গ্রীষ্মমন্ডলীয় জলবায়ুতে বৃদ্ধি পায়। ভ্যালেন্সিয়া, নাভি এবং ব্লাড কমলা রয়েছে','সাধারণত প্রতি 5-15 টন একর');
(24, 'কলা','Year-round', 'ফল', 'bananas.png', 'কলা গাছগুলি উষ্ণ, গ্রীষ্মমন্ডলীয় জলবায়ুতে ভাল-নিষ্কাশিত মাটিতে বৃদ্ধি পায়। তারা মিষ্টি, হলুদ ফলের গুচ্ছ উত্পাদন করে','সাধারণত প্রতি একর 30-40 টন');
(25, 'পেঁয়াজ','Fall', 'সবজি', 'Onion.png', 'পেঁয়াজ সাধারণত শীতল ঋতুতে জন্মায় এবং ভালোভাবে নিষ্কাশন করা মাটির প্রয়োজন হয়। জাতের মধ্যে রয়েছে লাল, সাদা এবং হলুদ পেঁয়াজ','সাধারণত 10-20 টন প্রতি একর');
(26, 'গাজর','Fall', 'সবজি', 'carrot.png', 'গাজর সাধারণত শীতল থেকে নাতিশীতোষ্ণ আবহাওয়ায় জন্মায় এবং এর জন্য আলগা, সুনিষ্কাশিত মাটির প্রয়োজন হয়। এগুলি কমলা, বেগুনি সহ বিভিন্ন রঙে আসে , এবং সাদা।','সাধারণত 15-25 টন প্রতি একর');
(27, 'সূর্যমুখী','Summer', 'তৈলবীজ', 'sunflower.png', 'সূর্যমুখী সাধারণত গ্রীষ্মের মৌসুমে জন্মায়। এগুলি ভাল নিষ্কাশনযুক্ত মাটিতে জন্মায় এবং এর প্রয়োজন হয়','সাধারণত 1,000-1,500 পাউন্ড তৈলবীজ প্রতি একর');
(28, 'কাজুবাদাম','Fall', 'বাদাম', 'almond.png', 'বাদাম গাছের জন্য হালকা শীত এবং গরম গ্রীষ্ম সহ ভূমধ্যসাগরের মতো জলবায়ু প্রয়োজন। তারা একটি শক্ত খোসায় আবদ্ধ কার্নেল তৈরি করে।','সাধারণত 2,000-3,000 পাউন্ড প্রতি একর');

-- --------------------------------------------------------


----------------------------------------------
CREATE TABLE rec(
   nitrogen           INTEGER  NOT NULL PRIMARY KEY 
  ,phosphorus           INTEGER  NOT NULL
  ,potassium           INTEGER  NOT NULL
  ,temperature VARCHAR(18) NOT NULL
  ,humidity    VARCHAR(18) NOT NULL
  ,ph          VARCHAR(18) NOT NULL
  ,rainfall    VARCHAR(18) NOT NULL
  ,soil        VARCHAR(18) NOT NULL
  ,season      VARCHAR(18) NOT NULL       
  ,label       VARCHAR(11) NOT NULL
);

INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall,soil,season,label) VALUES (35,42,45,22,55,4,150,'দোআঁশ মাটি','গ্রীষ্ম','ছোলা');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall,soil,season,label) VALUES (36,43,46,23,56,5,151,'কাঁদামাটি','শরৎ','মসুর ডাল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (37,44,47,24,57,6,152,'বেলে মাটি','শীতকাল','ধান');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (38,45,48,25,58,7,153,'পলি মাটি','সারাবছর','কলা');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (39,46,49,26,59,8,154,'দোআঁশ মাটি','গ্রীষ্ম','ধান');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (40,47,50,27,60,9,155,'কাঁদামাটি','শরৎ','বেগুন');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (41,48,51,28,61,10,156,'বেলে মাটি','শীতকাল','মসুর ডাল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (42,49,52,29,62,11,157,'পলি মাটি','সারাবছর','মসুর ডাল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (43,50,53,30,63,12,158,'দোআঁশ মাটি','গ্রীষ্ম','ভুট্টা');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (44,51,54,31,64,13,159,'কাঁদামাটি','শরৎ','বেগুন');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (45,52,55,32,65,14,160,'বেলে মাটি','শীতকাল','মসুর ডাল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (46,53,56,33,66,4,161,'পলি মাটি','সারাবছর','কলা');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (47,54,57,34,67,5,162,'দোআঁশ মাটি','গ্রীষ্ম','তরমুজ');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (48,55,58,35,68,6,163,'কাঁদামাটি','শরৎ','আপেল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (49,56,59,36,69,7,164,'বেলে মাটি','শীতকাল','শিম');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (50,57,60,37,70,8,165,'পলি মাটি','সারাবছর','কলা');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (51,58,61,38,71,9,166,'দোআঁশ মাটি','গ্রীষ্ম','আপেল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (52,59,62,39,72,10,167,'কাঁদামাটি','শরৎ','ছোলা');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (53,60,63,40,73,11,168,'বেলে মাটি','শীতকাল','শিম');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (54,61,64,41,74,12,169,'পলি মাটি','সারাবছর','কলা');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (55,62,65,42,75,13,170,'দোআঁশ মাটি','গ্রীষ্ম','আঙ্গুর');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (56,63,66,43,76,14,171,'কাঁদামাটি','শরৎ','ধান');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (57,64,67,44,77,4,172,'বেলে মাটি','শীতকাল','শিম');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (58,65,68,45,78,5,173,'পলি মাটি','সারাবছর','ধান');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (59,66,69,46,79,6,174,'দোআঁশ মাটি','গ্রীষ্ম','আপেল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (60,67,70,47,80,7,175,'কাঁদামাটি','শরৎ','আপেল');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (61,68,71,48,81,8,176,'বেলে মাটি','শীতকাল','ডাব');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (62,69,72,49,82,9,177,'পলি মাটি','সারাবছর','আঙ্গুর');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (63,70,73,50,83,10,178,'দোআঁশ মাটি','গ্রীষ্ম','ধান');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (64,71,74,51,84,11,179,'কাঁদামাটি','শরৎ','ডাব');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (65,72,75,52,85,12,180,'বেলে মাটি','শীতকাল','ডাব');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (66,73,76,53,86,13,181,'পলি মাটি','সারাবছর','পেঁপে');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (67,74,77,54,87,14,182,'দোআঁশ মাটি','গ্রীষ্ম','ধান');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (68,75,78,55,88,4,183,'কাঁদামাটি','শরৎ','ডাব');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (69,76,79,56,89,5,184,'বেলে মাটি','শীতকাল','ডাব');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (70,77,80,57,90,6,185,'পলি মাটি','সারাবছর','পেঁপে');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (71,78,81,58,91,7,186,'দোআঁশ মাটি','গ্রীষ্ম','আম');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (72,79,82,59,92,8,187,'কাঁদামাটি','শরৎ','ডাব');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (73,80,83,60,93,9,188,'বেলে মাটি','শীতকাল','পাট');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (74,81,84,61,94,10,189,'পলি মাটি','সারাবছর','পাট');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (75,82,85,62,95,11,190,'দোআঁশ মাটি','গ্রীষ্ম','আম');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (76,83,86,63,96,12,191,'কাঁদামাটি','শরৎ','পাট');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (77,84,87,64,97,13,192,'বেলে মাটি','শীতকাল','ডাব');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (78,85,88,65,98,14,193,'পলি মাটি','সারাবছর','পেঁপে');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (79,86,89,66,99,4,194,'দোআঁশ মাটি','গ্রীষ্ম','আম');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (80,87,90,67,100,5,195,'কাঁদামাটি','শরৎ','পাট');
INSERT INTO rec(nitrogen,phosphorus,potassium,temperature,humidity,ph,rainfall ,soil,season,label) VALUES (81,88,91,68,101,6,196,'বেলে মাটি','শীতকাল','ধান');



ALTER TABLE crops
  ADD PRIMARY KEY (`id`);


--
ALTER TABLE crops
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

