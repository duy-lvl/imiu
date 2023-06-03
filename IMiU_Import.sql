USE IMiU

select * from tags
select * from Nutritions
select * from meals
select * from Ingredients
select * from Directions
select * from NutritionFacts
select * from MealIngredients

delete from Nutritions
delete from NutritionFacts
delete from Directions
delete from Ingredients
delete from MealIngredients
delete from meals
delete from tags


GO

INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('2d7fb17f-8960-4d24-9a08-9ec5a0adc253',N'Béo phì',N'D-Overweight');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('452fb387-6e54-4bd5-84ab-a1ac475c7101',N'Tiểu đường',N'D-Diabetes');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('e30ae173-4ffc-4880-8609-12600684c5d0',N'Thận',N'D-Kidney');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('4040b725-d661-4c32-ac68-09bbe7c9a9fd',N'Dạ dày',N'D-Gastric');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('da925f71-cf64-4411-9b0b-f89b170f9eb0',N'Gan',N'D-Liver');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('82c310ad-2de9-4ab1-a8d8-ef4972e230df',N'Tim mạch',N'D-Heart');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('6e7a1b47-441b-4a25-984c-e66eaf151d18',N'Cao huyết áp',N'D-High pressure');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('d43e6bc1-abc9-4fd2-88f5-1eb3a5b15b8a',N'Món chay',N'Vegie');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('afb1d711-64c2-48fb-bbd9-eff16c71e41e',N'Món ăn sáng',N'Breakfast');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('2e473a68-72f6-4832-be99-530422366453',N'Kho',N'Kho');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('202dabb4-2428-4ed7-a12e-1daacfc3b78e',N'Xào',N'Xào');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('30db6a57-ce01-49f9-89e5-c22ff3b63f03',N'Luộc',N'Luộc');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('b5b49241-d0e6-40b9-9f9a-ce6d6d064343',N'Canh',N'Canh');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('c415e7fb-8e28-4e35-abf1-c8beebbc50a4',N'Gỏi',N'Gỏi');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('9c54c31e-86c8-4596-b910-4e07eca18a7e',N'Salad',N'Salad');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('34ca4755-bc14-4fab-ace1-d05e65130fdd',N'Năng lượng' ,'kJ');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e',N'Calories' ,'kcal');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('b1128e18-50e7-414a-90cf-162923794e5e',N'Chất béo' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('bf2758db-b306-40a1-b54a-5f4ff066f64c',N'Chất béo bão hoà' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('ed7c4476-9a83-4f23-af32-19dbb45712da',N'Đường' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('58d7d0b3-2725-4d54-a52d-4b0c1bbe302c',N'Chất xơ' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('0a01aca0-c99c-4c9b-9c59-c95719947a96',N'Chất đạm' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('6a928c43-1c44-4a25-8e15-dfbec035d2a0',N'Cholesterol' ,'mg');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Code])
     VALUES('31798bfb-7e06-47c4-846d-73b668aab04b',N'Natri' ,'mg');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8350f254-3eef-48a0-820e-f409e2ce9ab4',N'Dầu olive',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5fe4456b-bbce-4d45-ab09-1ab5d34999bc',N'Hành tây',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('4a9c8386-309e-4b1c-8799-53bfe3a37e75',N'Cần tây',N'cọng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('20df9d34-3538-4b1a-81ea-962199efcf45',N'Cá hồi',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('51ddf3e4-033e-4ca1-9b4e-9f968ea68ef7',N'Trứng',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8089c65a-857b-45c6-9dc9-c2962c46e064',N'Vụn bánh mì',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e544a709-3ae4-49dc-90df-8f4c7b15384e',N'Tiêu',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('cb8ad755-7d02-4ffd-8cf2-2e2aaefd7de7',N'Chanh',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('778bd37d-7594-47f7-b068-c209dc391425',N'Thịt bò',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8f9704d8-2b84-44ed-a9fd-f69befe3cda7',N'Muối',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6a145297-fe14-433a-ac56-42ad52ccc0d4',N'Dầu mè',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fe0e39d6-36ce-42f5-a191-59f6c8697ed4',N'Nước mắm',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('c833fc98-3bbc-4fbd-bc59-e5e4e477276b',N'Đường trắng',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ee896a2b-e309-444d-a14a-0e9558f28978',N'Đậu que',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8e3a10de-29e7-40fb-81eb-aa7719cff2ca',N'Tỏi',N'tép','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('67cb3fa3-8871-4f04-bf13-4b856c646494',N'Gừng',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('164ce242-d6d9-4753-b82d-f3958456eb50',N'Bơ',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('7d3d427b-6a80-4085-ad69-605007c04f3c',N'Cà chua',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3fc7514d-766e-4aef-ab5f-e209498bc19d',N'Ớt chuông',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f1dd2e2f-ba51-4cb4-86e6-387e33d9dfd1',N'Húng quế',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d0f72afc-7525-4516-9b45-40ceddcdbdbc',N'Sốt tương ớt',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e58bcd1e-2131-4501-a8a2-14cf61db5776',N'Đậu Hà Lan',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('4d592b92-baca-4551-86e6-f9c5521beffd',N'Cà rốt',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('35ee80b3-b52a-45d9-8bb4-1f1d414536c1',N'Bột mì',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d1f47a75-292c-4d42-8453-bede99a4775f',N'Nước dùng thịt bò',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ef1e81f0-e422-471f-be42-cd74bf5fcaa7',N'Bột nở',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bcc651f2-4c86-4c54-a1a2-8431cac8a18e',N'Bơ cục',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e039e451-6efc-41c8-bf0f-390c10910965',N'Bơ sữa',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6075befc-f801-4dd4-9a9c-7a313c6752b6',N'Thì là',N'muỗng cà phê ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6bdf39b4-cc14-4793-a9c3-7127d7d18742',N'Cải xoăn',N'bó','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('53b12a62-6b77-4c6e-9da9-32bdf9760f13',N'Sốt Mayonaise',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('06f41029-228e-4520-bf46-19cf17adf14e',N'Sữa chua',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e0553f0b-f545-4922-a833-2e24f74c7bc6',N'Nước cốt chanh',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('570269dd-5c8b-4671-bf82-718c6c439bea',N'Dưa leo',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('391d1c96-94f6-4ff9-a55e-a0e2c3af8cb8',N'Hành tím',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f3194169-76b7-4b2d-ac25-664c7800eb10',N'Kem nguyên chất',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bda89b41-5c72-4634-94a0-d26277a828df',N'Gạo',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('4f6e9db2-4181-4749-a7e2-8987e084d189',N'Tấm cuộn sushi',N'tấm','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1bc9836d-6c90-4f67-b85b-3c760cdf8cff',N'Bánh mì',N'lát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fbddf41d-15cd-4381-9ce7-02aa7478dc1b',N'Rau xà lách','cây','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bdfc2721-02a3-4690-85d0-b81e25ac1de1',N'Bột quế',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ed69db93-04d4-496c-bf74-a858955a6c82',N'Đinh hương',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('897d5ab4-7fea-4d79-8c9e-9ded43100f61',N'Thịt bò',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e9569d06-b181-4394-a7c1-348e41b5b107',N'Rượu vang',N'ly','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bc1cbf9c-b370-4f63-a7cc-4fb1405a7cf2',N'Khoai tây',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3ffd7c23-70f7-4c99-8845-dc8f331d9ffb',N'Sườn bò',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fbc2b7c6-45d8-471b-8fe7-b0db03b810f7',N'Giấm',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('36ff08f8-5856-40ce-badc-0cfebeaf887c',N'Bột bắp',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ff7b4808-f735-4339-8050-a883dc2e2ed6',N'Nước trắng','ly','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9c7a58a4-ad67-40d2-bd32-c93ede38ce5f',N'Nấm thảo mộc',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1f95550a-1199-49de-84f5-96350476ebba',N'Hạt mè',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('10ea688d-ab63-44d6-b563-bbfd6849fdba',N'Sốt cà chua',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d96b1b6a-cc1c-462a-98d5-affa308d2d11',N'Củ cải',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6756efb0-4899-4ebd-aa12-522572ff72db',N'Thịt heo',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9a2c266f-c0de-486e-aabd-b4189d954359',N'Rau chân vịt',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('56e2b7d6-c070-4ba1-9f9a-a515c207d4d0',N'Bột cà ri',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('99784619-22b6-449a-9e97-ccf3bef0f899',N'Súp lơ',N'cây','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('28caa786-35c5-4284-834e-0c9f7758027c',N'Đậu gà',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('739e7610-91e3-4c8e-9ab3-3f2d9e8514b4',N'Ớt chuông',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e3ab65f2-0160-4e7a-9ad9-25644f880f5c',N'Tôm',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f67a2130-90cf-44cf-a45d-1654fe0169da',N'Xì dầu',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b8fc2597-7f69-4e36-b6f8-2c3c6a421871',N'Đường trắng',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('12bb8b70-4013-4175-a1b4-7a0536fb138f',N'Ớt',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6f7187ad-6606-4383-9451-d167be7f4da0',N'Dứa',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('56949342-a104-43ea-a8a0-74def206059c',N'Đùi gà',N'g','');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('655aafa1-6d5d-40e8-be09-aa4f0f22711d',N'Bánh cá hồi (Salmon Cake) - phục vụ cho 4 người ăn',N'Những chiếc bánh cá hồi tốt cho sức khỏe này là một cách ngon miệng để tăng lượng omega-3 cho bạn.',45,2,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a5ff2137-5eb7-44e1-ae48-e47cb5b976f7',1,N'Làm nóng lò nướng ở nhiệt độ 225 độ C. Phết dầu ăn lên bề mặt tấm nướng','','655aafa1-6d5d-40e8-be09-aa4f0f22711d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7429b435-709e-4f22-92e9-fddd72df9d84',2,N'Đun nóng 0.5 muỗng cà phê dầu trong chảo trên lửa vừa. Thêm hành tây và cần tây; nấu, khuấy, cho đến khi mềm, khoảng 3 phút.','','655aafa1-6d5d-40e8-be09-aa4f0f22711d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('29b3c9d4-5e67-4a0a-9431-7821b9da6982',3,N'Đặt cá hồi vào một bát vừa. Tách ra bằng một cái nĩa; loại bỏ xương và da. Thêm trứng; trộn đều. Thêm hỗn hợp hành tây, vụn bánh mì và hạt tiêu; trộn đều. Tạo hỗn hợp thành 8 miếng.','','655aafa1-6d5d-40e8-be09-aa4f0f22711d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a4025d44-fd27-4b0f-8c85-aec4033b485f',4,N'Đun nóng 0.5 muỗng cà phê dầu còn lại trong chảo trên lửa vừa. Thêm 4 miếng chả và chiên cho đến khi mặt dưới vàng, từ 2 đến 3 phút. Rồi lật chúng lên khay nướng đã chuẩn bị. Lặp lại với các miếng chả còn lại.','','655aafa1-6d5d-40e8-be09-aa4f0f22711d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7f3bca1e-7c06-4c94-83fa-1f862ead0492',5,N'Nướng bánh cá hồi cho đến khi vàng trên mặt và làm nóng qua, 15 đến 20 phút. Bánh cá hồi ăn kèm với nước sốt và chanh.','','655aafa1-6d5d-40e8-be09-aa4f0f22711d');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4b391dc9-755b-4bb6-8e09-9b1304f77ecd','655aafa1-6d5d-40e8-be09-aa4f0f22711d','f1dd2e2f-ba51-4cb4-86e6-387e33d9dfd1',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7f2d5c55-7f8a-4368-9519-fe97a50f49cf','655aafa1-6d5d-40e8-be09-aa4f0f22711d','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cda7650c-a40c-4e0a-84d4-6f0657fc0a07','655aafa1-6d5d-40e8-be09-aa4f0f22711d','4a9c8386-309e-4b1c-8799-53bfe3a37e75',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('31814a76-64a0-437f-a7ed-d003e1b5b6b5','655aafa1-6d5d-40e8-be09-aa4f0f22711d','20df9d34-3538-4b1a-81ea-962199efcf45',425.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e90b608e-5c79-4fd2-9dc6-28127b292cfa','655aafa1-6d5d-40e8-be09-aa4f0f22711d','51ddf3e4-033e-4ca1-9b4e-9f968ea68ef7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cc7c4da6-6a3e-4ccd-8429-538c68a5827c','655aafa1-6d5d-40e8-be09-aa4f0f22711d','8089c65a-857b-45c6-9dc9-c2962c46e064',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('86b1990e-b49d-441b-938d-a5c255561e7b','655aafa1-6d5d-40e8-be09-aa4f0f22711d','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('af2bfa23-2934-4bf7-b84e-38b6e0fc2d96','655aafa1-6d5d-40e8-be09-aa4f0f22711d','cb8ad755-7d02-4ffd-8cf2-2e2aaefd7de7',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e9b999c3-2108-488d-b913-59ee7b542665','34ca4755-bc14-4fab-ace1-d05e65130fdd','655aafa1-6d5d-40e8-be09-aa4f0f22711d',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c6e56ab2-e523-4aaf-84cd-504a3f5575bd','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','655aafa1-6d5d-40e8-be09-aa4f0f22711d',350.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c9322aec-eae7-4419-8e7f-9fff318fbaba','b1128e18-50e7-414a-90cf-162923794e5e','655aafa1-6d5d-40e8-be09-aa4f0f22711d',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('312bdfe7-e3b2-442d-baab-e0de5158fae6','bf2758db-b306-40a1-b54a-5f4ff066f64c','655aafa1-6d5d-40e8-be09-aa4f0f22711d',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fe9a842a-3d06-42fe-b821-1742e734162e','ed7c4476-9a83-4f23-af32-19dbb45712da','655aafa1-6d5d-40e8-be09-aa4f0f22711d',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e9c2c22a-1371-412b-b4d7-c4d0a77e3381','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','655aafa1-6d5d-40e8-be09-aa4f0f22711d',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fcba8614-9c6d-44af-aa46-9c671f5c8917','0a01aca0-c99c-4c9b-9c59-c95719947a96','655aafa1-6d5d-40e8-be09-aa4f0f22711d',34.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7f693563-47f3-45f2-8e36-b1180f304a02','6a928c43-1c44-4a25-8e15-dfbec035d2a0','655aafa1-6d5d-40e8-be09-aa4f0f22711d',126.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1862a261-bf43-4859-bb44-f6523d0dbabd','31798bfb-7e06-47c4-846d-73b668aab04b','655aafa1-6d5d-40e8-be09-aa4f0f22711d',761.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('30db6a57-ce01-49f9-89e5-c22ff3b63f03','655aafa1-6d5d-40e8-be09-aa4f0f22711d');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('2332e465-f49d-4685-9367-f3586abb6347',N'Bò xào đậu que (Stir-fried beef with green beans) - phục vụ cho 4 người ăn',N'Món xào đậu que và thịt bò này được nấu với tiêu trắng thơm, dầu mè, gừng và tỏi. Phục vụ với cơm trắng.',25,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('485bc02c-f602-45a9-a956-779df3e29a30',1,N'Đun nóng 1 muỗng canh dầu thực vật trong chảo vừa.','','2332e465-f49d-4685-9367-f3586abb6347');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b2f98266-205b-4c3e-9ee7-ae3268d46fdb',2,N'Thêm thịt bò và nấu, chia thành từng miếng lớn, cho đến khi chín vàng và giòn, từ 4 đến 6 phút. Rắc 0.25 muỗng cà phê muối, sau đó chuyển sang một cái bát nhỏ.','','2332e465-f49d-4685-9367-f3586abb6347');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('468a8251-340b-4ee0-a194-a3c93b757d86',3,N'Trong khi đó, đánh giấm, dầu mè, nước mắm, đường và tiêu trắng trong một bát nhỏ.','','2332e465-f49d-4685-9367-f3586abb6347');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e576fa1d-4775-4d77-85e7-86d246465b3d',4,N'Đun nóng 2 muỗng canh dầu thực vật còn lại trong chảo. Thêm đậu quê và nấu, cho đến khi hơi cháy và mềm, từ 4 đến 6 phút. ','','2332e465-f49d-4685-9367-f3586abb6347');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('29d062a0-962f-4b87-ba1a-38a0f7432065',5,N'Thêm hành trắng, tỏi và gừng; nấu, khuấy, cho đến khi có mùi thơm, khoảng 1 phút. ','','2332e465-f49d-4685-9367-f3586abb6347');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1ca29ce6-b765-4f8e-ac16-a67304f3c2c3',6,N'Thêm hỗn hợp giấm, thịt bò để riêng và 0.25 muỗng cà phê muối còn lại; nấu, khuấy, cho đến khi tráng đều, khoảng 1 phút. Cuối cùng rắc hành lá, nếu muốn.','','2332e465-f49d-4685-9367-f3586abb6347');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9de1cc1a-36cf-455f-a371-c9c0684d838b','2332e465-f49d-4685-9367-f3586abb6347','8350f254-3eef-48a0-820e-f409e2ce9ab4',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('851fed23-bdb6-4cae-89bf-b3581669c4aa','2332e465-f49d-4685-9367-f3586abb6347','778bd37d-7594-47f7-b068-c209dc391425',230.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d40fc486-6299-4ae2-9dbe-5542ca31a2dc','2332e465-f49d-4685-9367-f3586abb6347','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3dd59b30-1188-44c3-827f-c1e097679ac2','2332e465-f49d-4685-9367-f3586abb6347','fbc2b7c6-45d8-471b-8fe7-b0db03b810f7',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d8a1060f-2523-4d85-9511-f9a566914f29','2332e465-f49d-4685-9367-f3586abb6347','6a145297-fe14-433a-ac56-42ad52ccc0d4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c5b9cce5-083e-4c96-9042-f68b21c23921','2332e465-f49d-4685-9367-f3586abb6347','fe0e39d6-36ce-42f5-a191-59f6c8697ed4',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9864996c-f8eb-4ca1-b11d-27a1c07d1166','2332e465-f49d-4685-9367-f3586abb6347','c833fc98-3bbc-4fbd-bc59-e5e4e477276b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1edd48a9-7a84-46ec-af93-f26f084a3484','2332e465-f49d-4685-9367-f3586abb6347','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a239d6ae-925b-4da4-8919-d8c8f320d5dc','2332e465-f49d-4685-9367-f3586abb6347','ee896a2b-e309-444d-a14a-0e9558f28978',680.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0ce5134c-ef7c-4bad-aa4e-e955bf8d2083','2332e465-f49d-4685-9367-f3586abb6347','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d3544049-018b-4686-8e04-ca36f8aa0b3a','2332e465-f49d-4685-9367-f3586abb6347','67cb3fa3-8871-4f04-bf13-4b856c646494',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cf13c636-2b98-4d75-bf79-ff1f525c4006','34ca4755-bc14-4fab-ace1-d05e65130fdd','2332e465-f49d-4685-9367-f3586abb6347',220.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a8fa3065-62fc-4a4d-a1b9-07193fa8e3d0','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','2332e465-f49d-4685-9367-f3586abb6347',294.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('edae18b9-93fe-42ff-ba14-62394b6de86c','b1128e18-50e7-414a-90cf-162923794e5e','2332e465-f49d-4685-9367-f3586abb6347',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('742ea635-bd43-47bf-9071-1d376abd9db8','bf2758db-b306-40a1-b54a-5f4ff066f64c','2332e465-f49d-4685-9367-f3586abb6347',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4a4dfa68-933a-4566-b4e0-16d43d7c1538','ed7c4476-9a83-4f23-af32-19dbb45712da','2332e465-f49d-4685-9367-f3586abb6347',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('93e27275-0b27-4512-992e-50e24d4d07e4','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','2332e465-f49d-4685-9367-f3586abb6347',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0aa83009-ae87-46fb-a246-f623e89aeedb','0a01aca0-c99c-4c9b-9c59-c95719947a96','2332e465-f49d-4685-9367-f3586abb6347',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ccadd2da-066e-4e42-a9df-2e11266f1f49','6a928c43-1c44-4a25-8e15-dfbec035d2a0','2332e465-f49d-4685-9367-f3586abb6347',37.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c096f53f-de6f-4ca2-902a-94d2e59247e5','31798bfb-7e06-47c4-846d-73b668aab04b','2332e465-f49d-4685-9367-f3586abb6347',526.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('202dabb4-2428-4ed7-a12e-1daacfc3b78e','2332e465-f49d-4685-9367-f3586abb6347');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('014d1cda-c01d-4f39-98c9-866703c74766',N'Bò hầm sốt đậu (Southern Beefy Skillet) - phục vụ cho 4 người ăn',N'Làm toàn bộ bữa ăn này trong một cái chảo! Thịt bò ngấm hương vị từ các loại rau và thảo mộc, giúp thịt bò ngon ngọt và đầy hương vị.',40,2,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4bb922e1-8c42-40f7-8884-5ed7cb6c223f',1,N'Nấu thịt bò trong một cái chảo lớn cùng với cần tây, hành tây và tỏi trên lửa vừa cho đến khi thịt có màu nâu, khuấy đều để thịt vỡ ra khi nấu.','','014d1cda-c01d-4f39-98c9-866703c74766');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('66d22f41-49a1-4a0e-b722-5b3ec50a107c',2,N'Thêm đậu , cà chua, sốt cà chua, ớt ngọt, húng quế, sốt ớt cay và tiêu đen. ','','014d1cda-c01d-4f39-98c9-866703c74766');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('442ee789-84b1-4e84-9c74-571e85af6e5f',3,N'Đun sôi; giảm nhiệt. Đun nhỏ lửa, không đậy nắp, trong 10 đến 15 phút hoặc cho đến khi có độ đặc mong muốn.','','014d1cda-c01d-4f39-98c9-866703c74766');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c302efd2-10dc-4996-bb2b-c26eceec09a3','014d1cda-c01d-4f39-98c9-866703c74766','778bd37d-7594-47f7-b068-c209dc391425',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2bd37b6a-819b-474d-9c5b-6adae043c2f7','014d1cda-c01d-4f39-98c9-866703c74766','4a9c8386-309e-4b1c-8799-53bfe3a37e75',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1b3515bb-9c6a-4163-bc93-fcd36c5c507a','014d1cda-c01d-4f39-98c9-866703c74766','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2263b1fa-4932-4732-8f99-e3c51ebbe54e','014d1cda-c01d-4f39-98c9-866703c74766','164ce242-d6d9-4753-b82d-f3958456eb50',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3323227d-ec72-4381-9821-95b079e80872','014d1cda-c01d-4f39-98c9-866703c74766','7d3d427b-6a80-4085-ad69-605007c04f3c',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('317c3288-5e91-4151-b6f8-7fd729b70867','014d1cda-c01d-4f39-98c9-866703c74766','3fc7514d-766e-4aef-ab5f-e209498bc19d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('83bba51a-97ca-4894-805d-b0edc479a283','014d1cda-c01d-4f39-98c9-866703c74766','f1dd2e2f-ba51-4cb4-86e6-387e33d9dfd1',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('82dbcd48-f297-4174-9ea1-468d932e1b30','014d1cda-c01d-4f39-98c9-866703c74766','d0f72afc-7525-4516-9b45-40ceddcdbdbc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0061f0e1-b182-4e42-b88e-d1a215e8d1a5','014d1cda-c01d-4f39-98c9-866703c74766','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9a15b03a-8d2a-4aa2-8c63-4239c79fab34','34ca4755-bc14-4fab-ace1-d05e65130fdd','014d1cda-c01d-4f39-98c9-866703c74766',260.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('db376678-5950-4fd9-8056-0ab3394ef8a9','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','014d1cda-c01d-4f39-98c9-866703c74766',342.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('378abdea-fefc-4f89-8baa-e7b55441711a','b1128e18-50e7-414a-90cf-162923794e5e','014d1cda-c01d-4f39-98c9-866703c74766',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('32dae126-a69c-4c98-b914-acbdc7bec8fb','bf2758db-b306-40a1-b54a-5f4ff066f64c','014d1cda-c01d-4f39-98c9-866703c74766',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('27618c22-fba4-4174-b06c-230541a1447e','ed7c4476-9a83-4f23-af32-19dbb45712da','014d1cda-c01d-4f39-98c9-866703c74766',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d83d6254-302d-47bc-a7d7-a3f192ea1a58','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','014d1cda-c01d-4f39-98c9-866703c74766',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3339bc73-aa30-4b29-8240-52777db655f5','0a01aca0-c99c-4c9b-9c59-c95719947a96','014d1cda-c01d-4f39-98c9-866703c74766',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('22939fa9-f6a6-4d18-b360-ae570a48cd51','6a928c43-1c44-4a25-8e15-dfbec035d2a0','014d1cda-c01d-4f39-98c9-866703c74766',74.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c67f2b42-9aba-42c8-b683-93663e9fa638','31798bfb-7e06-47c4-846d-73b668aab04b','014d1cda-c01d-4f39-98c9-866703c74766',499.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','014d1cda-c01d-4f39-98c9-866703c74766');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2e473a68-72f6-4832-be99-530422366453','014d1cda-c01d-4f39-98c9-866703c74766');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('d59c107c-3951-493b-b917-d07516bd5cdc',N'Thịt bò hình viên hầm sốt bơ - phục vụ cho 4 người ăn',N'Thịt bò cùng với nước sốt bơ hòa quyện tạo nên hương vị tuyệt vời, đồng thời bổ sung các chất dinh dưỡng cần thiết cho người ăn!',45,3,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e4f1d291-fd8f-4e3f-b051-cd941aa155d3',1,N'Làm nóng lò ở 200 độ C.','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('64faf41a-0388-46cb-9b3f-eae6e89fca83',2,N'Đun nóng dầu trong chảo chịu nhiệt lớn trên lửa vừa','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d140aac9-cfc5-4f91-bf50-9b4ec46f848d',3,N'Thêm thịt bò và nấu, dùng thìa gỗ nghiền nhỏ thịt bò cho đến khi có màu nâu và chín trong 4 đến 7 phút.','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('23f52629-f7ee-4436-8483-3393ebb560c4',4,N'Thêm tỏi, 0.75 muỗng cà phê muối; nấu, khuấy, trong 1 phút.','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d95e6d3d-8fb6-4e95-acb9-e39a4f6767a1',5,N'Cho hành tây, đậu Hà Lan và cà rốt vào xào; nấu, khuấy thường xuyên, cho đến khi rau nóng, khoảng 4 phút. Rắc hỗn hợp với 3 muỗng canh bột mì; nấu, khuấy, trong 1 phút.','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0f4e01a1-b873-40fa-b02b-279b0de8604b',6,N'Thêm nước dùng và nấu, thỉnh thoảng khuấy, cho đến khi hỗn hợp hơi đặc lại, khoảng 10 phút nữa.','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fa08be8b-3745-4def-9343-9d1b6a679c1c',7,N'rong khi đó, kết hợp 1 chén bột còn lại, bột nở và 0.25 muỗng cà phê muối còn lại trong một bát vừa. Chà bơ vào bột để tạo ra một hỗn hợp thô.','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0b57d0ba-5282-458c-b201-b59b2debe1a1',8,N'Khuấy bơ sữa và trộn cho đến khi vừa kết hợp. Đặt từng muỗng canh bột lên trên hỗn hợp thịt bò','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e94a14a4-b1e5-4795-aadc-f6ff53ead6fc',9,N'Chuyển chảo vào lò nướng. Nướng cho đến có màu nâu vàng và chín trong 15 đến 18 phút. Trang trí thêm mùi tây nếu muốn.','','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fc96a4ad-52cb-4268-8936-270d4ab7a122','d59c107c-3951-493b-b917-d07516bd5cdc','8350f254-3eef-48a0-820e-f409e2ce9ab4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cfe6acc5-fc46-43c8-bedd-8c4c4eea1cfe','d59c107c-3951-493b-b917-d07516bd5cdc','778bd37d-7594-47f7-b068-c209dc391425',455.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('75949ee7-13fa-486e-ac87-930f9ffe1e54','d59c107c-3951-493b-b917-d07516bd5cdc','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0adf7b59-b27a-4bc1-b353-35218b718713','d59c107c-3951-493b-b917-d07516bd5cdc','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6269235e-71e7-446f-b385-18c131a9e6bd','d59c107c-3951-493b-b917-d07516bd5cdc','e58bcd1e-2131-4501-a8a2-14cf61db5776',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d6b2e742-57ea-4b74-81e5-24286a6d1841','d59c107c-3951-493b-b917-d07516bd5cdc','4d592b92-baca-4551-86e6-f9c5521beffd',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('57f5feca-8670-45ab-8281-5f5bcd201a0a','d59c107c-3951-493b-b917-d07516bd5cdc','35ee80b3-b52a-45d9-8bb4-1f1d414536c1',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('23cb814a-94f2-4aa2-bae3-fe1de4d021e4','d59c107c-3951-493b-b917-d07516bd5cdc','d1f47a75-292c-4d42-8453-bede99a4775f',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0362d6d3-ee1f-4dbd-a0a4-f381d35f3ff9','d59c107c-3951-493b-b917-d07516bd5cdc','ef1e81f0-e422-471f-be42-cd74bf5fcaa7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b8d6c839-3eaf-49fb-a2cb-e4f2095dabec','d59c107c-3951-493b-b917-d07516bd5cdc','bcc651f2-4c86-4c54-a1a2-8431cac8a18e',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e4e5a05e-7654-4834-9694-44fea0d71a49','d59c107c-3951-493b-b917-d07516bd5cdc','e039e451-6efc-41c8-bf0f-390c10910965',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f0a08523-9c49-4b9f-a670-efe31cc01d23','34ca4755-bc14-4fab-ace1-d05e65130fdd','d59c107c-3951-493b-b917-d07516bd5cdc',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('73801553-e7e1-468c-bea6-a92aec3a941a','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','d59c107c-3951-493b-b917-d07516bd5cdc',420.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e7bd9fb9-270b-4095-bb93-b4f1e2ab83bf','b1128e18-50e7-414a-90cf-162923794e5e','d59c107c-3951-493b-b917-d07516bd5cdc',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('296e1f39-a6c1-4017-a8f5-28bd57f3bf7c','bf2758db-b306-40a1-b54a-5f4ff066f64c','d59c107c-3951-493b-b917-d07516bd5cdc',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b28218de-8c40-47e1-949c-1c686ff79e3d','ed7c4476-9a83-4f23-af32-19dbb45712da','d59c107c-3951-493b-b917-d07516bd5cdc',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ac815f4d-315b-4e73-8e52-94efb8150e06','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','d59c107c-3951-493b-b917-d07516bd5cdc',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f8f17706-88d5-4fbe-8709-ca0e2a214801','0a01aca0-c99c-4c9b-9c59-c95719947a96','d59c107c-3951-493b-b917-d07516bd5cdc',25.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a86f6ed4-7e31-443e-bbc1-41eccadaad4a','6a928c43-1c44-4a25-8e15-dfbec035d2a0','d59c107c-3951-493b-b917-d07516bd5cdc',72.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c49baab9-3412-40d0-ad8b-60c7f2e7216e','31798bfb-7e06-47c4-846d-73b668aab04b','d59c107c-3951-493b-b917-d07516bd5cdc',688.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('452fb387-6e54-4bd5-84ab-a1ac475c7101','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('82c310ad-2de9-4ab1-a8d8-ef4972e230df','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2e473a68-72f6-4832-be99-530422366453','d59c107c-3951-493b-b917-d07516bd5cdc');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('58dc67ac-57ba-4641-81b6-a9b56dbec796',N'Thịt bò xay xào khoai tây - phục vụ 4 người ăn',N'Trong công thức khoai tây và thịt bò xay tốt cho sức khỏe này, thịt bò xay và khoai tây được kết hợp với các loại rau nhiều màu sắc, bao gồm cải xoăn, cà chua và ớt.',40,2,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('625b3440-aa33-4be5-9cde-d64c29569189',1,N'Đun nóng 1 muỗng canh dầu olive trong chảo gang lớn trên lửa vừa','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d6d185a3-32d6-412e-b983-13893572262e',2,N'Thêm thịt bò, thì là, muối và hạt tiêu; nấu, khuấy thường xuyên, cho đến khi vàng đều, khoảng 6 phút.','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('27bc649f-7f97-42b5-a87c-c100fddcd025',3,N'Dùng thìa có rãnh, chuyển thịt bò sang đĩa có lót khăn giấy; không lau sạch chảo. Thêm 1 muỗng canh dầu vào các giọt trong chảo.','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('21c1f69c-66cd-4c84-afa3-b3768f441808',4,N'Thêm khoai tây; nấu, thỉnh thoảng khuấy, cho đến khi khoai tây bắt đầu caramen và mềm, khoảng 20 phút. Chuyển khoai tây vào đĩa với thịt bò.','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8f744d8a-7fef-46a1-925b-8018fe5b4ca7',5,N'Đun nóng 1 muỗng canh dầu còn lại trong chảo trên lửa vừa. Thêm hành tây, ớt chuông; nấu, thỉnh thoảng khuấy, cho đến khi mềm, khoảng 6 phút.','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0199cd75-5e9f-4283-b4b9-8588f466ae60',6,N'Thêm tỏi; nấu, khuấy thường xuyên, cho đến khi có mùi thơm, khoảng 1 phút.','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f4bee441-eb83-4770-86a7-0b33108813fe',7,N'Thêm cải xoăn và cà chua; nấu, khuấy thường xuyên, cho đến khi cải xoăn héo và cà chua chín trong khoảng 3 phút.','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cba67091-008d-4941-bb1b-855d1c89e254',8,N'Cho thịt bò và khoai tây vào xào cùng. Rắc hành lá, nếu muốn.','','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2c21aa50-72a0-40d3-95e1-7ab77fb85350','58dc67ac-57ba-4641-81b6-a9b56dbec796','8350f254-3eef-48a0-820e-f409e2ce9ab4',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4d368980-2742-4f69-a021-d030d7369f4e','58dc67ac-57ba-4641-81b6-a9b56dbec796','778bd37d-7594-47f7-b068-c209dc391425',455.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('14fbeaeb-247b-47d6-bfca-63f50f043c80','58dc67ac-57ba-4641-81b6-a9b56dbec796','6075befc-f801-4dd4-9a9c-7a313c6752b6',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5515cc38-7667-4dd5-8820-547028ee3ec6','58dc67ac-57ba-4641-81b6-a9b56dbec796','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('64082b01-ae72-43c8-aa42-07f9a1620c68','58dc67ac-57ba-4641-81b6-a9b56dbec796','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('816b9cca-86b8-4b83-9c1a-959e7615e368','58dc67ac-57ba-4641-81b6-a9b56dbec796','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('671edfaa-5ea7-4041-9175-67bb01237caf','58dc67ac-57ba-4641-81b6-a9b56dbec796','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('25193408-2ba4-4a2a-bfba-982fb797318b','58dc67ac-57ba-4641-81b6-a9b56dbec796','6bdf39b4-cc14-4793-a9c3-7127d7d18742',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('64849d9f-f068-4033-907d-23ca656f60b6','58dc67ac-57ba-4641-81b6-a9b56dbec796','7d3d427b-6a80-4085-ad69-605007c04f3c',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1e9811f2-96bc-4259-a5b8-87507c259104','34ca4755-bc14-4fab-ace1-d05e65130fdd','58dc67ac-57ba-4641-81b6-a9b56dbec796',230.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('29c66736-4e5e-43b1-aa67-836a1b32b6fb','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','58dc67ac-57ba-4641-81b6-a9b56dbec796',322.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e7150c53-6948-427c-95ba-657c1c6028fc','b1128e18-50e7-414a-90cf-162923794e5e','58dc67ac-57ba-4641-81b6-a9b56dbec796',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a2ce3dcd-98ac-4ca5-b08c-0d7501b3b276','bf2758db-b306-40a1-b54a-5f4ff066f64c','58dc67ac-57ba-4641-81b6-a9b56dbec796',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d2980aa3-0b41-4268-a332-aa90a1c38d3f','ed7c4476-9a83-4f23-af32-19dbb45712da','58dc67ac-57ba-4641-81b6-a9b56dbec796',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('917ded9e-d948-491f-9dbf-7bc85b48e61c','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','58dc67ac-57ba-4641-81b6-a9b56dbec796',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a28cbcaf-4d4d-4fac-8331-2b42f605b476','0a01aca0-c99c-4c9b-9c59-c95719947a96','58dc67ac-57ba-4641-81b6-a9b56dbec796',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('84667b88-f82f-4bcc-856b-550cdd8a81ee','6a928c43-1c44-4a25-8e15-dfbec035d2a0','58dc67ac-57ba-4641-81b6-a9b56dbec796',49.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f8adede6-3a1e-4e55-a5cc-d1b2293524b9','31798bfb-7e06-47c4-846d-73b668aab04b','58dc67ac-57ba-4641-81b6-a9b56dbec796',400.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('202dabb4-2428-4ed7-a12e-1daacfc3b78e','58dc67ac-57ba-4641-81b6-a9b56dbec796');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',N'Bánh cá hồi với salad dưa leo - phục vụ cho 4 người',N'Trong công thức bữa tối dễ dàng này, cá hồi đóng hộp tiện lợi được biến thành những miếng chả cá hồi áp chảo thơm ngon được phục vụ cùng với salad dưa leo',30,2,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0b68bccd-1278-4b7d-b9c9-bab1f0716d9c',1,N'Khuấy trứng, vụn bánh mì, sốt mayonnaise, và hạt tiêu trong một bát lớn. Nhẹ nhàng trộn trong cá hồi. Định hình thành miếng dày ','','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ea61df4d-d119-4b2f-b09c-1c6bf52d691d',2,N'Đun nóng dầu trong chảo không dính lớn trên lửa vừa. Thêm chả và nấu cho đến khi có màu nâu ở đáy, khoảng 6 phút.','','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('feb16068-b49a-4967-9ce5-634f3d12d764',3,N' Lật miếng chả và nấu cho đến khi chín vàng và nóng đều, khoảng 6 phút nữa.','','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('43ff2136-097e-4b8e-aa7b-3bff3e178d84',4,N'Trong khi đó, đánh sữa chua, nước cốt chanh, thì là và muối trong một bát vừa. Thêm dưa chuột và hành tây để kết hợp.','','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fdaa0081-8305-4c3e-a2ee-379505ff1b40',5,N'Chia bánh cá hồi và salad dưa leo ra 4 đĩa.','','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f6163afd-94ba-400a-89a2-8b047f0b187e','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','51ddf3e4-033e-4ca1-9b4e-9f968ea68ef7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cb77828a-a02b-49d7-8029-67702f9fbfb1','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','8089c65a-857b-45c6-9dc9-c2962c46e064',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fc26d9c2-60af-4d79-9914-7dadfe332a89','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','53b12a62-6b77-4c6e-9da9-32bdf9760f13',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a32b40d4-0432-4030-8166-d2e00aa53e91','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6cb85fa1-e58c-41ee-ad03-e6af819e44bf','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','20df9d34-3538-4b1a-81ea-962199efcf45',140.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ffe99b37-3350-4529-b548-056b0e15a51e','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','8350f254-3eef-48a0-820e-f409e2ce9ab4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9f0044aa-bd4d-4e35-ac6a-93671515e88c','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','06f41029-228e-4520-bf46-19cf17adf14e',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('264f1a7e-c0a4-48db-a73e-26efa18212f4','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','e0553f0b-f545-4922-a833-2e24f74c7bc6',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c3831a48-dc5f-498b-a85e-2e41d9202963','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5ad73059-5688-4bf0-ac2f-202b48aa3074','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','570269dd-5c8b-4671-bf82-718c6c439bea',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c90e994e-36b2-47f7-b3a2-450172dbb5b9','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff','391d1c96-94f6-4ff9-a55e-a0e2c3af8cb8',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1c34e38c-22b3-458e-bfca-5df474eecc16','34ca4755-bc14-4fab-ace1-d05e65130fdd','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',170.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2f820d69-2420-4a15-bb9b-8b2dd93147b1','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',255.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3dc66fd1-896b-4d6b-94a2-db7eca2b2484','b1128e18-50e7-414a-90cf-162923794e5e','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c4f3845a-cb14-4657-ad9e-2069ab2fa380','bf2758db-b306-40a1-b54a-5f4ff066f64c','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a21e19a1-098f-4f0a-aee3-a5a426faf6a1','ed7c4476-9a83-4f23-af32-19dbb45712da','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('70ba23f0-9944-4419-83c1-6f4e8bbf4e56','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('eef29887-15ae-4517-9346-63a1171267d1','0a01aca0-c99c-4c9b-9c59-c95719947a96','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',22.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cdbc91d2-8183-4e24-a3ee-dbdbf45b5099','6a928c43-1c44-4a25-8e15-dfbec035d2a0','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',110.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e6acbc23-7899-40bb-920c-dd4ab8de220d','31798bfb-7e06-47c4-846d-73b668aab04b','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff',598.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('9c54c31e-86c8-4596-b910-4e07eca18a7e','420343ff-3bc4-4b3f-a0b1-f9dd2743c7ff');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('db145930-7a3d-4d4d-9821-e281016d1af1',N'Cá hồi với đậu Hà Lan nghiền - phuc vụ cho 4 người',N'Nấu bơ cho đến khi nó có màu nâu sẽ tạo thêm hương vị hấp dẫn, hấp dẫn cho công thức cá hồi áp chảo dễ dàng này. ',20,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7eab8c55-7fb9-4836-a9d0-eec877cdac12',1,N'Đun sôi một nồi nước vừa ở nhiệt độ cao. Thêm đậu Hà Lan và nấu cho đến khi mềm, khoảng 5 phút.','','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('19421f10-5760-4e08-b764-126893582f71',2,N'Kết hợp đậu Hà Lan, nước dành riêng,kem nguyên chất, vỏ chanh, nước cốt chanh, muối và hạt tiêu','','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5888c9b1-fc2b-48c8-a993-377b2e303df9',3,N'Trải ra đĩa phục vụ','','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9cc1e95c-c329-4784-ab90-4c1f21373ae8',4,N'Đun nóng dầu trong chảo gang lớn hoặc chảo không dính trên lửa vừa','','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1853e480-0016-4fa2-8a95-4f1274a18b98',5,N'Rắc cá hồi và thêm vào chảo, mặt da hướng lên trên. Nấu, lật một lần, cho đến khi nó có màu nâu và bong ra bằng nĩa, tổng thời gian từ 6 đến 7 phút.','','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('00906128-6bd3-43cc-94e7-3eef94d14046',6,N'Xếp cá hồi lên trên đậu Hà Lan. Thêm bơ và cỏ xạ hương vào chảo. Nấu, khuấy, cho đến khi bơ có màu nâu và thơm, khoảng 30 giây. Ăn kèm với chanh, nếu muốn.','','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('27cbf1c2-d585-4288-a25a-4fc8bef29016','db145930-7a3d-4d4d-9821-e281016d1af1','e58bcd1e-2131-4501-a8a2-14cf61db5776',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1612984f-0776-4176-a25c-c40fc646364f','db145930-7a3d-4d4d-9821-e281016d1af1','f3194169-76b7-4b2d-ac25-664c7800eb10',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('35377f9b-1940-465b-aa25-af535c54198a','db145930-7a3d-4d4d-9821-e281016d1af1','e0553f0b-f545-4922-a833-2e24f74c7bc6',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('604d8492-2101-4dfc-bd35-34ddc1dfc41f','db145930-7a3d-4d4d-9821-e281016d1af1','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6a6a47d8-7862-4ad1-9426-5504c3974902','db145930-7a3d-4d4d-9821-e281016d1af1','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('936b7223-ef53-48de-af59-3b13f1701dc8','db145930-7a3d-4d4d-9821-e281016d1af1','8350f254-3eef-48a0-820e-f409e2ce9ab4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('32f51b0d-3009-420f-90d2-d8d1db313775','db145930-7a3d-4d4d-9821-e281016d1af1','20df9d34-3538-4b1a-81ea-962199efcf45',560.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5392d13c-4b8c-4a2b-b328-343266305d9f','db145930-7a3d-4d4d-9821-e281016d1af1','164ce242-d6d9-4753-b82d-f3958456eb50',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('151491c4-ba87-43f3-83bf-c16d4ce3fc4e','34ca4755-bc14-4fab-ace1-d05e65130fdd','db145930-7a3d-4d4d-9821-e281016d1af1',280.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('68170b76-f946-40dc-9790-96f8d64556fc','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','db145930-7a3d-4d4d-9821-e281016d1af1',370.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3c80b9cf-704f-4d34-bcb9-daa1c8b9c77c','b1128e18-50e7-414a-90cf-162923794e5e','db145930-7a3d-4d4d-9821-e281016d1af1',18.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b6bbdfd7-9450-447e-a60e-1cdd87dc9e14','bf2758db-b306-40a1-b54a-5f4ff066f64c','db145930-7a3d-4d4d-9821-e281016d1af1',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('60373757-d842-455b-a083-2506bd28fa8c','ed7c4476-9a83-4f23-af32-19dbb45712da','db145930-7a3d-4d4d-9821-e281016d1af1',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6222edb9-5246-4577-ab99-da76a0c6f6ce','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','db145930-7a3d-4d4d-9821-e281016d1af1',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e729aeef-0d5b-495e-b325-806a66b52e30','0a01aca0-c99c-4c9b-9c59-c95719947a96','db145930-7a3d-4d4d-9821-e281016d1af1',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5d7f43fb-bea9-4ea0-b165-004f6e14be92','6a928c43-1c44-4a25-8e15-dfbec035d2a0','db145930-7a3d-4d4d-9821-e281016d1af1',86.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d0a9f7e0-56c4-4e4d-8c2c-c7a5056e1ed5','31798bfb-7e06-47c4-846d-73b668aab04b','db145930-7a3d-4d4d-9821-e281016d1af1',669.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('82c310ad-2de9-4ab1-a8d8-ef4972e230df','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('202dabb4-2428-4ed7-a12e-1daacfc3b78e','db145930-7a3d-4d4d-9821-e281016d1af1');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('8658254c-96b0-45bf-b98f-6dcbf8c3a2af',N'Salad gà kiểu Hy Lạp - phục vụ cho 4 người',N'Biến thịt gà còn sót lại thành món salad tươi kiểu Địa Trung Hải với dầu Giấm đóng chai, nhiều rau, feta và ô liu',20,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fd92e905-a729-405f-814b-d71af4ba25be',1,N'Trộn cá hồi, sốt mayonnaise, và giấm trong một bát nhỏ.','','8658254c-96b0-45bf-b98f-6dcbf8c3a2af');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1bef8434-4877-4ad4-8c7e-d1edb62e9811',2,N'Đổ đầy nước vào một cái bát nhỏ. Đặt 1 tấm rong biển lên thảm cuốn sushi hoặc miếng màng bọc thực phẩm, với một đầu dài hướng về phía bạn.','','8658254c-96b0-45bf-b98f-6dcbf8c3a2af');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fbc5ba13-5605-42db-a22d-9d7996b0b10d',3,N'ùng đầu ngón tay ướt phủ 0.33 chén cơm lên nửa dưới của tấm cuộn sushi, sau đó rắc 0.5 thìa cà phê vừng.','','8658254c-96b0-45bf-b98f-6dcbf8c3a2af');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('714896f4-6a4e-45f0-9a37-2db795cddd69',4,N'trên cùng với 1/6 hỗn hợp cá hồi, dưa chuột, cà rốt, hành lá, ngò và bơ.','','8658254c-96b0-45bf-b98f-6dcbf8c3a2af');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a892dd45-d732-42a6-b37d-ea18e30ea849',5,N'Sử dụng chiếu để giúp bạn, cuộn tấm cuộn sushi lại, nhét chặt các nguyên liệu khi bạn làm việc. Lặp lại với các thành phần còn lại.','','8658254c-96b0-45bf-b98f-6dcbf8c3a2af');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('183d3aad-2744-4152-927f-0235134a27c0','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','fbddf41d-15cd-4381-9ce7-02aa7478dc1b',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b6b3e7fb-eb6d-4306-b5b8-bb8b3c8718bb','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','53b12a62-6b77-4c6e-9da9-32bdf9760f13',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('acd2b595-dc43-46b3-8abb-b60ef7d820f8','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','4f6e9db2-4181-4749-a7e2-8987e084d189',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('09598558-fc5e-4955-addc-dd550b0ccbc5','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','bda89b41-5c72-4634-94a0-d26277a828df',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('77904250-f2f6-47fc-b7be-ed465fde092b','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','1f95550a-1199-49de-84f5-96350476ebba',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d466a29a-69bc-4f8d-8c8c-102f113d28be','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','570269dd-5c8b-4671-bf82-718c6c439bea',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f957880d-25e8-4a3a-a25e-afd060d823ae','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','4d592b92-baca-4551-86e6-f9c5521beffd',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('75f6a59a-45fe-45a4-ad0d-4b9093807c27','8658254c-96b0-45bf-b98f-6dcbf8c3a2af','164ce242-d6d9-4753-b82d-f3958456eb50',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('35185883-718c-4c7d-8cfe-19d2f149ebed','34ca4755-bc14-4fab-ace1-d05e65130fdd','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',280.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('43fbc36d-cc35-4a7d-bf0f-ff17485f974d','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',363.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('070cbc67-d0f0-49ae-bfe7-98b9c05dc788','b1128e18-50e7-414a-90cf-162923794e5e','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d48fedc2-0bd1-4d8e-86c1-c639dd3f8096','bf2758db-b306-40a1-b54a-5f4ff066f64c','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b40dd7c6-9217-4bfb-a1cd-a51a31ed4605','ed7c4476-9a83-4f23-af32-19dbb45712da','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('db0f24f1-0cc6-40e2-8f9e-295fa8f58708','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3459802b-8f44-4d57-ab29-ccb6ce8f949a','0a01aca0-c99c-4c9b-9c59-c95719947a96','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',16.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0555f0ad-0e42-4ec5-8460-06bccbfcbe32','6a928c43-1c44-4a25-8e15-dfbec035d2a0','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',40.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6278b3ad-44ed-4fbf-95c6-a04044dedb63','31798bfb-7e06-47c4-846d-73b668aab04b','8658254c-96b0-45bf-b98f-6dcbf8c3a2af',342.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','8658254c-96b0-45bf-b98f-6dcbf8c3a2af');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('c415e7fb-8e28-4e35-abf1-c8beebbc50a4','8658254c-96b0-45bf-b98f-6dcbf8c3a2af');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('062f10ae-c4e0-4055-9371-40b96c30fd50',N'Sandwich cá hồi - phục vụ cho 4 người',N'o',25,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8c1cd716-57fd-4edf-b7c5-269183b25c54',1,N'Xát gia vị lên cả hai mặt cá hồi. Nướng cho đến khi chín, 3 đến 4 phút mỗi bên.','','062f10ae-c4e0-4055-9371-40b96c30fd50');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6227b440-27dd-4b09-beb5-e495d395dcbe',2,N'Nghiền bơ và sốt mayonnaise trong một bát nhỏ','','062f10ae-c4e0-4055-9371-40b96c30fd50');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ea421b21-964c-4d25-9ee2-33e9d649b2df',3,N'Để làm bánh mì sandwich, phết một ít hỗn hợp bơ lên mỗi cuộn và cho cá hồi, cà chua và hành tây lên trên.','','062f10ae-c4e0-4055-9371-40b96c30fd50');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('28cf92cd-cdef-4c2b-899c-5c265eccfdb8','062f10ae-c4e0-4055-9371-40b96c30fd50','20df9d34-3538-4b1a-81ea-962199efcf45',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c655b9fb-7805-47b6-8398-99e54d6d0c41','062f10ae-c4e0-4055-9371-40b96c30fd50','164ce242-d6d9-4753-b82d-f3958456eb50',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1c2217e0-ff78-424c-9124-ae0bb2c1bbe1','062f10ae-c4e0-4055-9371-40b96c30fd50','53b12a62-6b77-4c6e-9da9-32bdf9760f13',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fe76046e-ad2f-4d16-984a-2b4ad2c604d3','062f10ae-c4e0-4055-9371-40b96c30fd50','1bc9836d-6c90-4f67-b85b-3c760cdf8cff',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cdde38fd-e1e5-4a93-8078-ffdc5d7f2327','062f10ae-c4e0-4055-9371-40b96c30fd50','fbddf41d-15cd-4381-9ce7-02aa7478dc1b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c6cfd154-8106-4054-a57a-de2d4f24d26c','062f10ae-c4e0-4055-9371-40b96c30fd50','7d3d427b-6a80-4085-ad69-605007c04f3c',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dd631e31-85b3-44d5-b0b7-1c008cb6dde5','062f10ae-c4e0-4055-9371-40b96c30fd50','391d1c96-94f6-4ff9-a55e-a0e2c3af8cb8',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9c9dedb4-370b-4956-be19-d1d591afcfea','34ca4755-bc14-4fab-ace1-d05e65130fdd','062f10ae-c4e0-4055-9371-40b96c30fd50',340.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c65bd638-5549-4931-a6e8-692556ee451a','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','062f10ae-c4e0-4055-9371-40b96c30fd50',416.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dace9a06-9f83-4258-bf4f-358a0e455d87','b1128e18-50e7-414a-90cf-162923794e5e','062f10ae-c4e0-4055-9371-40b96c30fd50',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a756770d-8c93-46ca-aec2-196f29720fe7','bf2758db-b306-40a1-b54a-5f4ff066f64c','062f10ae-c4e0-4055-9371-40b96c30fd50',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ec7100b2-e683-4677-b866-0ec600583aa8','ed7c4476-9a83-4f23-af32-19dbb45712da','062f10ae-c4e0-4055-9371-40b96c30fd50',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6b15a136-6a79-4810-b1b5-2f3461c6347c','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','062f10ae-c4e0-4055-9371-40b96c30fd50',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2bf17888-ccd4-4204-862a-c31174ebd7d0','0a01aca0-c99c-4c9b-9c59-c95719947a96','062f10ae-c4e0-4055-9371-40b96c30fd50',31.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('acdb9e50-18ae-4cef-a3e1-3dfbd1f4dba5','6a928c43-1c44-4a25-8e15-dfbec035d2a0','062f10ae-c4e0-4055-9371-40b96c30fd50',55.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9d581f42-0264-416e-bbbb-d607db84dac8','31798bfb-7e06-47c4-846d-73b668aab04b','062f10ae-c4e0-4055-9371-40b96c30fd50',744.0);
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',N'Cá hồi áp chảo tiêu chanh - phục vụ cho 4 người',N'Những nguyên liệu đơn giản như chanh, hạt tiêu đen đập dập và ớt bột đã đánh thức hoàn toàn món cá hồi mềm tan với lớp vỏ ngoài giòn rụm này.',15,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f2faf84a-483b-4bb8-9721-f999e94e7145',1,N'Thấm khô cá hồi và đặt mặt da úp xuống trong một chiếc bát vừa.','','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ab8dd2c7-5b94-49bd-84cf-57f81c408c08',2,N'Rắc tiêu, ớt bột, bột tỏi, 0.5 thìa muối và 1 thìa nước cốt chanh.','','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('609603c5-d56b-41ae-9574-cc95d2c6e9d9',3,N'Đun nóng dầu trong chảo chống dính lớn trên lửa vừa','','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e989003d-6b95-4f54-8a47-a249d3f9d13c',4,N'Thêm cá hồi, mặt da úp xuống; nấu cho đến khi da bong ra khỏi chảo dễ dàng và các cạnh mờ đục, khoảng 4 phút.','','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('62eeb236-38fe-4243-a7ec-cfe220068c4a',5,N'Giảm nhiệt xuống thấp và lật cá hồi.','','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('442fb921-d0e0-4ca7-9df9-ac87af732aa1',6,N'Rắc cá hồi với 1 muỗng canh nước cốt chanh còn lại, vỏ chanh, rau mùi tây và muối mịn.','','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('17087066-65bc-49d4-ad4a-5e63d9a2e38e','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6','20df9d34-3538-4b1a-81ea-962199efcf45',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('724bd50e-28d3-4d75-86ae-0750998598b2','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6','e544a709-3ae4-49dc-90df-8f4c7b15384e',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d0619258-efcf-419b-9241-a7813a63fd1a','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fb1ef123-913a-458d-8156-8afb16c62061','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('17518bc9-09e7-43ed-ae17-220996657d0c','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6','e0553f0b-f545-4922-a833-2e24f74c7bc6',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9a23da9f-aa06-48cd-bb81-a999ed07c015','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6','8350f254-3eef-48a0-820e-f409e2ce9ab4',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2a78206d-5a76-4081-8159-f30f3758b7dc','34ca4755-bc14-4fab-ace1-d05e65130fdd','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',170.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c81635b3-2e83-4598-bfb8-7ba6285ee382','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',239.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d5d99870-3efc-4562-aeaa-2475d7b09cfb','b1128e18-50e7-414a-90cf-162923794e5e','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2a41eacc-7a7f-41bd-85a9-424f380ff64e','bf2758db-b306-40a1-b54a-5f4ff066f64c','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('56d20113-39ca-4a30-a084-75eb4e62b4a2','ed7c4476-9a83-4f23-af32-19dbb45712da','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a7c11d50-39b7-4dfb-b5c4-f095e9c9e82a','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('beb87bc9-6eaa-48fe-9dae-d839d4794c40','0a01aca0-c99c-4c9b-9c59-c95719947a96','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',28.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('823a7e1f-b57f-490d-83b7-565076dbe018','6a928c43-1c44-4a25-8e15-dfbec035d2a0','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',78.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('492bec72-9276-499d-935a-c662b8486569','31798bfb-7e06-47c4-846d-73b668aab04b','c04e75d0-3365-4d4a-9a4a-5a09d1c0f8c6',427.0);
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('2438e26e-a58a-48a1-b289-0e08e6b2078e',N'Trứng hấp lòng đào ăn kèm với bánh mì - phục vụ cho 4 người',N'Ăn những quả trứng này một mình cho bữa sáng hoặc bữa ăn nhẹ no, hoặc phục vụ chúng trên bánh mì nướng hoặc bánh nướng xốp',20,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b90a3638-b400-4030-8d85-c702a8250653',1,N'Chuẩn bị nồi cách thủy. Đun nóng nước đến 100 độ C.','','2438e26e-a58a-48a1-b289-0e08e6b2078e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('92dc530b-059e-4707-b920-3409ea4f532a',2,N'Khi nước đã được, dùng muỗng có rãnh để múc trứng vào nồi. Đậy nồi càng nhiều càng tốt bằng màng bọc thực phẩm hoặc khay nướng.','','2438e26e-a58a-48a1-b289-0e08e6b2078e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cf7c6b47-c3ff-49f2-9278-ca09b5996d76',3,N'Nấu trong 15 phút để có độ sệt của lòng đỏ.','','2438e26e-a58a-48a1-b289-0e08e6b2078e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d56b5c13-e6fb-4fb7-917b-831addf3f3d4',4,N'Bóc trứng và đặt 2 quả vào mỗi 4 bát phục vụ; rắc đều với muối.','','2438e26e-a58a-48a1-b289-0e08e6b2078e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ffa5a0bd-f5ef-4647-b08f-5727cb5220df',5,N'Nướng bánh mì lên và dùng cùng với trứng cho bữa sáng','','2438e26e-a58a-48a1-b289-0e08e6b2078e');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b8081fc9-1648-4655-b0f4-1741c025f667','2438e26e-a58a-48a1-b289-0e08e6b2078e','51ddf3e4-033e-4ca1-9b4e-9f968ea68ef7',8.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('57fc6582-eb98-4b0e-93db-22035369d901','2438e26e-a58a-48a1-b289-0e08e6b2078e','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.33,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('94e92c92-fa2d-423b-a41e-16667aad4ad5','34ca4755-bc14-4fab-ace1-d05e65130fdd','2438e26e-a58a-48a1-b289-0e08e6b2078e',85.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('85b8ce23-b5af-40b4-9136-7806160be7c5','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','2438e26e-a58a-48a1-b289-0e08e6b2078e',143.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('38009c09-bf15-40fc-940e-11f6092906f6','b1128e18-50e7-414a-90cf-162923794e5e','2438e26e-a58a-48a1-b289-0e08e6b2078e',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1c3be672-b343-4ebc-aee9-3f6df8740644','bf2758db-b306-40a1-b54a-5f4ff066f64c','2438e26e-a58a-48a1-b289-0e08e6b2078e',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c180c02c-c9a0-49d0-9506-d0ddcf2f4ed0','ed7c4476-9a83-4f23-af32-19dbb45712da','2438e26e-a58a-48a1-b289-0e08e6b2078e',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('71190176-2439-4c5c-a425-ef94901b2b84','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','2438e26e-a58a-48a1-b289-0e08e6b2078e',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e8f845e4-8aa6-42d6-b6ce-898ba210b4ec','0a01aca0-c99c-4c9b-9c59-c95719947a96','2438e26e-a58a-48a1-b289-0e08e6b2078e',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('adb8142a-e272-47d9-80c4-ae989950a543','6a928c43-1c44-4a25-8e15-dfbec035d2a0','2438e26e-a58a-48a1-b289-0e08e6b2078e',372.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a6ab790d-35f8-4d0d-8a08-3e969bb51578','31798bfb-7e06-47c4-846d-73b668aab04b','2438e26e-a58a-48a1-b289-0e08e6b2078e',262.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('afb1d711-64c2-48fb-bbd9-eff16c71e41e','2438e26e-a58a-48a1-b289-0e08e6b2078e');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('e5dfa826-90b8-4033-8585-c7f5f441470d',N'Thịt bò kho cùng cà rốt và khoai tây - phục vụ cho 4 người',N'Sự pha trộn gia vị trong công thức thịt bò hầm tốt cho sức khỏe này — quế, hạt tiêu và đinh hương — sự kết hợp này rất phù hợp trong các món mặn.',120,2,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aef4610c-863c-43c5-9335-ef2cb66a29a7',1,N'Kết hợp muối, quế, hạt tiêu và đinh hương trong một bát nhỏ. Xoa đều hỗn hợp lên thịt bò.','','e5dfa826-90b8-4033-8585-c7f5f441470d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5bfa2e71-96a2-408a-bff3-f6d045544598',2,N'Đun nóng dầu trong một chảo lớn trên lửa vừa. Thêm thịt bò và nấu cho đến khi có màu nâu, 4 đến 5 phút mỗi bên. Chuyển sang nồi nấu chậm.','','e5dfa826-90b8-4033-8585-c7f5f441470d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aa578a80-4a1e-4010-8516-52d65075be5b',3,N'Thêm hành tây và tỏi vào chảo. Nấu, khuấy, trong 2 phút. Thêm rượu và cà chua; đun sôi','','e5dfa826-90b8-4033-8585-c7f5f441470d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('eb546dc6-e4f8-4ec5-8a4f-909d9cb6dbac',4,N'Thêm hỗn hợp vào nồi nấu chậm cùng với cà rốt và khoai tây.','','e5dfa826-90b8-4033-8585-c7f5f441470d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6d974b34-8b3f-4987-b4e0-d526ac5a4dc3',5,N'Đậy nắp và nấu ở chế độ nhiệt cao trong 2 giờLấy thịt bò ra khỏi nồi nấu chậm và cắt lát. Phục vụ thịt bò với nước sốt và rau, trang trí với húng quế, nếu muốn.','','e5dfa826-90b8-4033-8585-c7f5f441470d');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c5287714-8f35-4705-8bda-c0f78cefc7f6','e5dfa826-90b8-4033-8585-c7f5f441470d','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('71460b18-99a3-4f52-b7ad-099b9fdb2070','e5dfa826-90b8-4033-8585-c7f5f441470d','bdfc2721-02a3-4690-85d0-b81e25ac1de1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a87ac1d6-48d4-4f27-b656-80e01e1754aa','e5dfa826-90b8-4033-8585-c7f5f441470d','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('64893e27-c968-45bd-8a52-8d4d75e347c9','e5dfa826-90b8-4033-8585-c7f5f441470d','ed69db93-04d4-496c-bf74-a858955a6c82',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1b2219f8-e7e7-4eac-87ee-fb3c641c008f','e5dfa826-90b8-4033-8585-c7f5f441470d','778bd37d-7594-47f7-b068-c209dc391425',800.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('41196c41-69c0-444b-9993-730d331be360','e5dfa826-90b8-4033-8585-c7f5f441470d','8350f254-3eef-48a0-820e-f409e2ce9ab4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d4e9bbe6-eb4d-4dbd-9473-be7ae642944d','e5dfa826-90b8-4033-8585-c7f5f441470d','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3f68d609-34b6-4e09-99f2-f9bd93b8c6e2','e5dfa826-90b8-4033-8585-c7f5f441470d','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c50f6505-31d6-4736-87b1-26ff05d1abbf','e5dfa826-90b8-4033-8585-c7f5f441470d','e9569d06-b181-4394-a7c1-348e41b5b107',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d622e40f-fb82-4a60-b2bc-668d78ce2685','e5dfa826-90b8-4033-8585-c7f5f441470d','7d3d427b-6a80-4085-ad69-605007c04f3c',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b4eeee27-f884-4dee-b760-f72d52e2157e','e5dfa826-90b8-4033-8585-c7f5f441470d','bc1cbf9c-b370-4f63-a7cc-4fb1405a7cf2',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('66bda11a-dc69-44c4-a98b-9b42e3df6282','e5dfa826-90b8-4033-8585-c7f5f441470d','4d592b92-baca-4551-86e6-f9c5521beffd',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('09d5ff93-53c7-47b9-8e50-2b5b4a323157','34ca4755-bc14-4fab-ace1-d05e65130fdd','e5dfa826-90b8-4033-8585-c7f5f441470d',270.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e5fab4df-7884-4476-9609-00a987600e01','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','e5dfa826-90b8-4033-8585-c7f5f441470d',318.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a7341427-5f01-4356-a5cd-00b7a6063532','b1128e18-50e7-414a-90cf-162923794e5e','e5dfa826-90b8-4033-8585-c7f5f441470d',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2502cbd2-432e-425a-a6f2-111a5bb47f1d','bf2758db-b306-40a1-b54a-5f4ff066f64c','e5dfa826-90b8-4033-8585-c7f5f441470d',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4e974580-12b4-45cd-b0cb-913a041f81cb','ed7c4476-9a83-4f23-af32-19dbb45712da','e5dfa826-90b8-4033-8585-c7f5f441470d',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c84f0b4d-e20f-41f3-9c6c-d714d879a77c','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','e5dfa826-90b8-4033-8585-c7f5f441470d',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('891b259f-a300-4288-ac7f-798552bc2de0','0a01aca0-c99c-4c9b-9c59-c95719947a96','e5dfa826-90b8-4033-8585-c7f5f441470d',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8a84a32c-7770-4ac2-ba15-5deb2e3b0bdb','6a928c43-1c44-4a25-8e15-dfbec035d2a0','e5dfa826-90b8-4033-8585-c7f5f441470d',99.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f219baba-240d-4ed0-826d-50f77d56fb31','31798bfb-7e06-47c4-846d-73b668aab04b','e5dfa826-90b8-4033-8585-c7f5f441470d',538.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','e5dfa826-90b8-4033-8585-c7f5f441470d');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2e473a68-72f6-4832-be99-530422366453','e5dfa826-90b8-4033-8585-c7f5f441470d');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('3d6a963d-c253-4004-bf47-9c9577f427b4',N'Sườn bỏ nướng nấu mềm - phục vụ cho 4 người',N'Bây giờ, đây là công thức làm món sườn non thịt bò mà bạn có thể phục vụ cho bạn bè—ngay cả trong ngày lễ.',120,3,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d8dee23b-8bbb-498c-a46c-46cfeec02a16',1,N'Ướp sườn với 0.5 thìa muối tiêu. Đun nóng 1 muỗng canh dầu trong chảo lớn trên lửa vừa và cao.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1851fc09-6782-464d-b773-c9c05c5861e3',2,N'Thêm sườn và nấu cho đến khi chín vàng ở tất cả các mặt, tổng cộng khoảng 5 phút.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('753e0a53-abff-4e27-becf-8b08fb9a1a45',3,N'Chuyển sang nồi hầm','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('02ccc894-1ca3-45fb-b3be-0758d1c6e790',4,N'Thêm 1 muỗng canh dầu và hành tây còn lại vào chảo; nấu, thỉnh thoảng khuấy, cho đến khi bắt đầu chuyển sang màu nâu, từ 3 đến 5 phút.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('33405dc8-e7a1-4346-a3fc-c5c48b0ac70b',5,N'Khuấy bột cà chua, tỏi và cỏ xạ hương; nấu, khuấy, trong 1 phút.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('73b7daf6-f43a-4138-a521-5bcd0dbf8d0c',6,N'Thêm giấm và nấu cho đến khi chất lỏng gần như cạn kiệt, từ 3 đến 5 phút.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bdc625bf-b234-4ca9-a13d-d8bcd76e8762',7,N'Chuyển sang nồi hầm và thêm nước dùng. Đậy nắp và nấu ở chế độ nhiệt cao trong 2 giờ','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f98c1e41-9b0f-4ce0-a3b0-4adbf8de022c',8,N'Chuyển sườn ra đĩa phục vụ. Chuyển nước sốt vào một cái chảo vừa và đun sôi ở nhiệt độ cao.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f3bc3757-f010-49bf-b0a3-ab4d49a05dd1',9,N'Đánh bột ngô và nước trong một cái bát nhỏ và thêm vào chất lỏng đang sôi.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a34487e5-397a-48b6-ae95-737f1dbc2f0a',10,N'Nấu, khuấy đều, cho đến khi đặc lại, khoảng 2 phút.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c4596de7-fd64-4f09-b720-e5b5ad28e80b',11,N'Phục vụ sườn với nước thịt và rắc rau mùi tây, nếu muốn.','','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9c7a80f0-db19-4737-8115-ea21a0b0db95','3d6a963d-c253-4004-bf47-9c9577f427b4','3ffd7c23-70f7-4c99-8845-dc8f331d9ffb',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e6d7fe04-48d4-4e34-aa15-dcb81601ed2e','3d6a963d-c253-4004-bf47-9c9577f427b4','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('489fb1cb-ab14-466f-9e94-e10ba99f8640','3d6a963d-c253-4004-bf47-9c9577f427b4','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6a791afa-2315-4900-a204-492eb95a7fb5','3d6a963d-c253-4004-bf47-9c9577f427b4','8350f254-3eef-48a0-820e-f409e2ce9ab4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('50aa68b8-6d44-4854-b253-9952aadafcb4','3d6a963d-c253-4004-bf47-9c9577f427b4','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b986bfdd-e13b-4139-b985-024b3bd6ba50','3d6a963d-c253-4004-bf47-9c9577f427b4','10ea688d-ab63-44d6-b563-bbfd6849fdba',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7b18444d-8554-4bc6-8b49-3f07a9bd0c22','3d6a963d-c253-4004-bf47-9c9577f427b4','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('70ae5094-a299-4aee-a4ba-9e3cf51ec099','3d6a963d-c253-4004-bf47-9c9577f427b4','fbc2b7c6-45d8-471b-8fe7-b0db03b810f7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('693bf6e5-e6f4-4585-928c-261989498b6b','3d6a963d-c253-4004-bf47-9c9577f427b4','d1f47a75-292c-4d42-8453-bede99a4775f',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2bf7225c-8282-4796-99be-e8a601c9d98b','3d6a963d-c253-4004-bf47-9c9577f427b4','36ff08f8-5856-40ce-badc-0cfebeaf887c',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7b05a901-fb79-4f16-ab1e-06a883111531','3d6a963d-c253-4004-bf47-9c9577f427b4','ff7b4808-f735-4339-8050-a883dc2e2ed6',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('34462905-a8fd-498e-ab1d-9935639bfb6c','34ca4755-bc14-4fab-ace1-d05e65130fdd','3d6a963d-c253-4004-bf47-9c9577f427b4',212.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a4dc42dd-6968-4f9d-86e0-2c63c98f3e40','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','3d6a963d-c253-4004-bf47-9c9577f427b4',281.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6d61e999-145d-4720-8afd-4c29d50d6e19','b1128e18-50e7-414a-90cf-162923794e5e','3d6a963d-c253-4004-bf47-9c9577f427b4',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8116583c-ee4d-4d9e-9edd-5f14b376a0e9','bf2758db-b306-40a1-b54a-5f4ff066f64c','3d6a963d-c253-4004-bf47-9c9577f427b4',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ed8a206b-21bc-4788-85fa-3c0b55a0524a','ed7c4476-9a83-4f23-af32-19dbb45712da','3d6a963d-c253-4004-bf47-9c9577f427b4',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('31dfa4d1-61ab-458b-b29e-143de7c22ea4','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','3d6a963d-c253-4004-bf47-9c9577f427b4',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0522b8b5-86f3-4ad5-8cd7-f9eefda5c574','0a01aca0-c99c-4c9b-9c59-c95719947a96','3d6a963d-c253-4004-bf47-9c9577f427b4',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f39331c3-1a61-4645-a47c-ecbe81a7e37a','6a928c43-1c44-4a25-8e15-dfbec035d2a0','3d6a963d-c253-4004-bf47-9c9577f427b4',59.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('acbea6a4-c3f7-4a5e-9c45-54c32b02a052','31798bfb-7e06-47c4-846d-73b668aab04b','3d6a963d-c253-4004-bf47-9c9577f427b4',416.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('82c310ad-2de9-4ab1-a8d8-ef4972e230df','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('6e7a1b47-441b-4a25-984c-e66eaf151d18','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2e473a68-72f6-4832-be99-530422366453','3d6a963d-c253-4004-bf47-9c9577f427b4');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',N'Thịt bò hầm',N'Củ cải tạo hương vị tự nhiên và kết cấu tương tự như khoai tây - cho món thịt bò hầm đậm đà và đầy hương vị này.',50,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('431fe297-477f-4e85-9582-0dd85105d86e',1,N'Đun nóng dầu trong một cái nồi lớn trên lửa vừa.','','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f73f6a15-fdd7-4f0c-be2a-6512c00f2e2c',2,N'Thêm thịt bò, hành tây, nấm, hương thảo, muối và hạt tiêu. Nấu, khuấy đều, cho đến khi thịt chín vàng đều các mặt, từ 5 đến 8 phút.','','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cd5c2986-04e8-4f92-8d2c-ed0d37515717',3,N'Khuấy bột cà chua; nấu, khuấy, trong 1 phút. Thêm rượu và nấu thêm 1 phút nữa.','','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2c6c3726-a5d7-49e9-92f2-5f237c6969bb',4,N'Thêm nước dùng, củ cải và cà rốt. Đun sôi.','','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('31193fed-5e85-4f0c-81d6-75f8e4a1537e',5,N'Nấu, thỉnh thoảng khuấy, cho đến khi thịt bò và rau mềm và nước dùng hơi đặc lại, khoảng 30 phút.','','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2b51b011-8992-4b07-9419-6a8e52dd648b',6,N'Bày thật đẹp ra đĩa và hưởng thức','','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5dcff13a-92dd-4115-8724-1478d10f1504','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','8350f254-3eef-48a0-820e-f409e2ce9ab4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e2f62724-35a0-476c-9294-0781e9f74006','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','778bd37d-7594-47f7-b068-c209dc391425',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('555532b5-639f-4e00-8ef3-294666a658fb','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fcd5afd2-9f81-4023-92ae-9bc090c4e5c4','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','9c7a58a4-ad67-40d2-bd32-c93ede38ce5f',225.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d67905ee-d8ea-4491-904b-542745e5ee1c','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','ed69db93-04d4-496c-bf74-a858955a6c82',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f0bc6d40-62f3-4b90-a0d0-164ba95b5d07','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dffa1723-9051-4544-94f5-c38762595837','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d367604b-6f62-4e3a-8dba-67650e649de4','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','35ee80b3-b52a-45d9-8bb4-1f1d414536c1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5d9d97cc-012d-4dd0-8d2b-7e11327e70f4','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','7d3d427b-6a80-4085-ad69-605007c04f3c',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7feca5e3-458f-4018-8a9d-af880849ee2d','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','e9569d06-b181-4394-a7c1-348e41b5b107',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('77a50036-92a2-4f2f-9e67-894034029611','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','d1f47a75-292c-4d42-8453-bede99a4775f',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a0463f11-c2a4-4d84-b71c-092d0387a66d','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','d96b1b6a-cc1c-462a-98d5-affa308d2d11',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c67fbc43-7335-4faa-9e92-feb62572a010','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2','4d592b92-baca-4551-86e6-f9c5521beffd',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0d24166d-0f1e-4205-b9c2-60da109af854','34ca4755-bc14-4fab-ace1-d05e65130fdd','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',160.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ab563c5d-553d-46c6-b111-a661bfab2bcc','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',206.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bd2263f5-6c23-4965-ad9c-f6d90c4734fb','b1128e18-50e7-414a-90cf-162923794e5e','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('77be1e0e-0646-415f-ac96-d62aa531a232','bf2758db-b306-40a1-b54a-5f4ff066f64c','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b5038283-09ca-45dd-9e3f-408d500c8a3e','ed7c4476-9a83-4f23-af32-19dbb45712da','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7432eb22-15d5-4c3c-84c5-7e0ed0e262a6','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5b40ecb8-11ff-4533-831b-f97f269c8faa','0a01aca0-c99c-4c9b-9c59-c95719947a96','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',21.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cfe6e81e-5909-46f1-9301-14134ad0d587','6a928c43-1c44-4a25-8e15-dfbec035d2a0','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',48.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9f0d9e78-c08c-40b9-9e60-46b742074989','31798bfb-7e06-47c4-846d-73b668aab04b','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2',424.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2e473a68-72f6-4832-be99-530422366453','67eb0da6-3a80-447d-bcb2-8d4a6b139cd2');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('d9c06cb9-37ac-4496-a5a6-a1e1caf82730',N'Thịt heo hầm',N'Món thịt lợn hầm cổ điển có khả năng thích nghi cao này rất thịnh soạn và dễ chịu. Bạn có thể sử dụng bất kỳ loại thảo mộc tươi nào và thay đổi các loại rau củ cho phù hợp với khẩu vị của bạn.',120,3,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('21020a0a-9e0d-4297-9036-3245db708e3d',1,N'Phủ thịt lợn với bột mì, 1 muỗng cà phê muối và hạt tiêu trong một bát lớn cho đến khi được phủ đều.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0eefbe79-bb65-44e4-8f21-a062c5dbbe39',2,N'Đun nóng dầu ở nhiệt độ trung bình cao.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3065a5ee-fa88-47c0-a7d2-3a555ba280dc',3,N'Thêm một nửa số thịt lợn; nấu, cho đến khi có màu nâu ở đáy, khoảng 3 phút.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7de4ca46-4a55-4781-a9af-7348f8a928c7',4,N'Khuấy và tiếp tục nấu, thỉnh thoảng khuấy cho đến khi chín vàng đều các mặt, khoảng 3 phút. Chuyển thịt vào một cái bát sạch; lặp lại với thịt lợn còn lại.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('198be319-ea66-4ce1-9294-c319cf462343',5,N'Giảm nhiệt xuống mức trung bình. Thêm hành tây vào nồi; nấu, khuấy thường xuyên, cho đến khi mềm, 3 đến 5 phút.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a92ae45e-ef02-420a-bc43-74857826917d',6,N'Thêm cà chua; nấu, khuấy liên tục, cho đến khi cà chua sẫm màu, khoảng 1 phút. Thêm rượu; nấu, cho đến khi giảm khoảng một nửa, khoảng 1 phút.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('88fb3e74-8e69-4a21-bdda-639fd94f84a6',7,N'cho thịt lợn đã chín vàng vào nồi. Tăng nhiệt lên mức trung bình cao và đun sôi; giảm nhiệt xuống thấp, đậy nắp và nấu cho đến khi thịt lợn gần mềm, 30 đến 40 phút.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a47ba7c6-dfe9-4def-85ea-561e7ea15152',8,N'Khuấy khoai tây, cà rốt, rau mùi tây và nấm. Đậy nắp và nấu, thỉnh thoảng khuấy, cho đến khi rau mềm, 30 đến 40 phút.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3bdffef0-33df-4fd7-b653-ed6aba7349b0',9,N'Đánh bông bột ngô để tạo thành hỗn hợp sệt. Khuấy hỗn hợp trở lại món hầm; tăng nhiệt lên mức trung bình. nấu đậu Hà Lan; nấu cho đến khi đậu có màu xanh sáng và chất lỏng đặc lại, khoảng 2 phút.','','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7d771fe5-f1d9-47b2-9cbe-b39e4b28d29a','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','6756efb0-4899-4ebd-aa12-522572ff72db',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d0ca3a4d-9e57-4822-8908-d9e4c5a7d51a','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','35ee80b3-b52a-45d9-8bb4-1f1d414536c1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bef60430-ed44-420c-b62f-0e17ee228f7c','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ede73252-fa46-45e5-9233-7bbab0d283a2','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('33b44aa1-f542-4778-9bf8-6e64c31fb3d3','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','8350f254-3eef-48a0-820e-f409e2ce9ab4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8c6d6d83-5c86-473f-ac18-f6631a182798','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4db65c3b-9a49-4798-ad9d-4b4e8d3f5674','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','7d3d427b-6a80-4085-ad69-605007c04f3c',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e26509ad-5d4f-4d7b-be09-e9ac1e80fef0','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c73df285-ebfd-42d1-8d04-a79d25d9b339','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','d1f47a75-292c-4d42-8453-bede99a4775f',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ecc8d958-bb1f-487e-b8d2-83e38da6b2ce','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','bc1cbf9c-b370-4f63-a7cc-4fb1405a7cf2',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9f2da1f6-f05d-4e77-9320-0205c1ac22d3','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','4d592b92-baca-4551-86e6-f9c5521beffd',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c0b1cfd7-9338-44a1-9b7f-45ea452d7f33','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','9c7a58a4-ad67-40d2-bd32-c93ede38ce5f',150.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0415f8ca-6153-423c-b119-cd7b3853f99e','d9c06cb9-37ac-4496-a5a6-a1e1caf82730','e58bcd1e-2131-4501-a8a2-14cf61db5776',150.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5ae66294-7784-4bf9-adce-caf44edc74d4','34ca4755-bc14-4fab-ace1-d05e65130fdd','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',276.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('15327d43-a17c-41d7-860d-f3b2228ddcce','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',340.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d02c8f1d-7db9-4509-85ff-476fc02e0644','b1128e18-50e7-414a-90cf-162923794e5e','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a025bbb7-8ae3-4f1b-84c1-7eab5b7fefa1','bf2758db-b306-40a1-b54a-5f4ff066f64c','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('da4cf861-bfed-483c-af17-b6d345d777ab','ed7c4476-9a83-4f23-af32-19dbb45712da','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9bc2d82b-2911-4201-8613-f698a9b61b13','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4394aaf4-94f8-49b4-a44c-9f354dffda87','0a01aca0-c99c-4c9b-9c59-c95719947a96','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',29.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('74105505-697b-4f61-92d8-90c3714784e5','6a928c43-1c44-4a25-8e15-dfbec035d2a0','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',76.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3715b94d-4e07-4743-bd66-f05dcf4d8258','31798bfb-7e06-47c4-846d-73b668aab04b','d9c06cb9-37ac-4496-a5a6-a1e1caf82730',707.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2e473a68-72f6-4832-be99-530422366453','d9c06cb9-37ac-4496-a5a6-a1e1caf82730');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',N'Đậu gà hầm cà ri',N'Được đóng gói với các loại rau và đậu gà giàu chất xơ, món hầm thơm này sẽ khiến bạn hài lòng.',55,2,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b27b0af2-1f25-488a-afe9-dffc5fc646c6',1,N'Đặt rau chân vịt vào lò vi sóng; thêm 1 muỗng canh nước và đậy nắp.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5ebdc0e2-1f77-4c2b-bed4-12ba1f614779',2,N'Lò vi sóng ở chế độ Cao, thỉnh thoảng khuấy cho đến khi vừa héo, từ 1 đến 2 phút.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('327cf98f-30e4-46cb-9b41-899a25b34b2d',3,N'Chuyển sang một cái chao để ráo nước. Khi đủ nguội để xử lý, hãy vắt hết nước thừa. Cắt nhỏ và đặt sang một bên.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cb3bdbca-65bf-443c-8714-2bcdbe68d763',4,N'Đun nóng dầu trong chảo.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7dbf92b2-efb1-490a-a0ac-f95dc424f825',5,N'Thêm hành tây và nấu, khuấy, cho đến khi mờ, khoảng 8 phút. Thêm gừng, ớt, tỏi và bột cà ri; nấu, khuấy, trong 30 giây.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('951266bb-a8f4-48e3-a8fe-b9e6adc035ad',6,N'Thêm cà rốt và 2 muỗng canh nước, đậy nắp và nấu, thỉnh thoảng khuấy, cho đến khi cà rốt mềm, khoảng 10 phút (thêm nước nếu hỗn hợp trở nên khô).','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('49feb9e3-58a7-4ba4-b14b-58a1c373f4a4',7,N'Thêm súp lơ; đậy nắp và nấu, thỉnh thoảng khuấy, cho đến khi mềm vừa đủ giòn, thêm 5 đến 10 phút nữa.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f7c4e00f-6a20-4cca-8ea8-d6c2e747d609',8,N'Khuấy đậu gà, cà chua, và nước cốt dừa.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a7a0f676-f5b5-44e2-865d-4c45c05fef24',9,N'Giảm nhiệt xuống thấp và đun nhỏ lửa không đậy nắp, thỉnh thoảng khuấy trong 15 phút.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('602ff796-4759-444e-a3a3-5e30c36e2777',10,N'Cho rau chân vịt đã để riêng vào xào qua và đun nóng.','','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c779dd89-76ef-47e3-a4c2-230dfea82488','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','9a2c266f-c0de-486e-aabd-b4189d954359',150.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6b4549a7-7039-4107-b09e-03bbc4e77727','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','8350f254-3eef-48a0-820e-f409e2ce9ab4',1.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ca54cbd7-3b16-4252-ab44-837347f297c6','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e02e2e17-86dd-45c7-8213-694c8b81206a','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','67cb3fa3-8871-4f04-bf13-4b856c646494',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('84f2cd35-a153-45aa-bc48-a7a28d9c0dab','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','12bb8b70-4013-4175-a1b4-7a0536fb138f',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2f3b4cd8-7266-4297-8b2c-24f2a289c2ef','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','8e3a10de-29e7-40fb-81eb-aa7719cff2ca',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f8079195-706d-42a7-a5f3-70ecccd9fe9d','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','56e2b7d6-c070-4ba1-9f9a-a515c207d4d0',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('05cecd65-33d3-47fb-8f41-43ea3982fc18','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','4d592b92-baca-4551-86e6-f9c5521beffd',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7b3de14f-f81e-4db6-8f15-103656b9256f','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','99784619-22b6-449a-9e97-ccf3bef0f899',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0d068982-e5d4-4418-8813-8c914aabb151','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','28caa786-35c5-4284-834e-0c9f7758027c',230.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('90ecc7d5-5657-4025-84bc-f67a1edbb33b','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56','7d3d427b-6a80-4085-ad69-605007c04f3c',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4a57d701-3f80-4e6c-9671-daa9945e9564','34ca4755-bc14-4fab-ace1-d05e65130fdd','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',201.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5f220a2c-5cc6-487a-8c4c-76784fc1ee80','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',249.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('075af91d-c4b5-4394-9876-f6aab4cdfc66','b1128e18-50e7-414a-90cf-162923794e5e','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7c0ed0b3-e80d-4b71-9381-ae03920e71de','bf2758db-b306-40a1-b54a-5f4ff066f64c','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('17e16dbc-f85c-49cf-bcc7-911f6fc55397','ed7c4476-9a83-4f23-af32-19dbb45712da','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3701fcfa-e11b-4d59-a556-08b59a3e2634','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2cb89f74-4c9b-4ccd-a973-1398e6f01cca','0a01aca0-c99c-4c9b-9c59-c95719947a96','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3372e60f-5339-4e80-8162-1046f380e23c','6a928c43-1c44-4a25-8e15-dfbec035d2a0','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('167bd104-7ec6-43c3-ae96-1b721d485e3e','31798bfb-7e06-47c4-846d-73b668aab04b','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56',309.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('452fb387-6e54-4bd5-84ab-a1ac475c7101','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('82c310ad-2de9-4ab1-a8d8-ef4972e230df','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('6e7a1b47-441b-4a25-984c-e66eaf151d18','8f7f076b-f663-4c9c-a3a6-1d4ccdd65f56');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('ae19e955-455d-4d66-bf5f-ddaa7b072aa3',N'Cơm tôm áp chảo, dứa và ớt',N'Bữa tối hải sản cực kỳ dễ làm này sử dụng dứa tươi và nước sốt kiểu tôm tạo nên hương vị ngọt ngào và bùi bùi.',20,1,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e90ebf5b-6b31-4931-8d3e-6c9d072f82b1',1,N'Làm nóng lò ở nhiệt độ 225 độ C. Đặt một khay nướng có viền vào lò nướng','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0725e845-f41a-48e6-ba3c-08f641eca8e2',2,N'Cho gạo và dầu vào tô. Sử dụng ngón tay của bạn để chia nhỏ gạo và bôi dầu.','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('34111191-9f4e-43b6-93e6-f8a1889882e8',3,N'Cẩn thận lấy chảo ra khỏi lò; dàn đều hỗn hợp cơm ở giữa chảo.','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e35aa486-bc73-42d6-ae7a-7daa8bc768cb',4,N'Nướng trong lò làm nóng trước trong 5 phút; khuấy đều.','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1436bbb5-570e-4bc3-ab24-80b666f7a35b',5,N'Cơm với dứa và ớt chuông; nướng ở 225 độ C trong 5 phút.','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d06ef082-17f3-42fe-9e24-a6537e097d64',6,N'Xếp tôm lên trên hỗn hợp cơm; nướng ở nhiệt độ 225 độ C cho đến khi tôm chín, khoảng 6 phút.','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0d6d37b7-0818-4fec-a0b2-e8db6eaca7f4',7,N'Cho nước tương, đường và giấm vào bát dùng được trong lò vi sóng. Lò vi sóng ở mức cao 45 giây.','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('19b0d99d-86a4-466a-ad4e-3aa156a1b3f6',8,N'Đánh cho đến khi đường tan. Rưới đều trên chảo. Thêm hạt tiêu đen','','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('18bc8fb4-a5ae-4c00-8ba8-4813cdaed60f','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','bda89b41-5c72-4634-94a0-d26277a828df',230.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cd44a581-df4b-41d5-834d-1790eb29ac73','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','8350f254-3eef-48a0-820e-f409e2ce9ab4',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9f14d88d-1508-476b-ac7f-4e2a09c35ef3','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','6f7187ad-6606-4383-9451-d167be7f4da0',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('70ab5184-c082-4940-8bf3-bfc47bde974d','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','3fc7514d-766e-4aef-ab5f-e209498bc19d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9abf1471-e91b-42b5-93ff-27b50a8f7ec1','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','e3ab65f2-0160-4e7a-9ad9-25644f880f5c',570.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8d27ae69-2fb7-4d12-be11-d7d451bee12c','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','f67a2130-90cf-44cf-a45d-1654fe0169da',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('32fec709-ecfb-4b6f-9964-845b278f206b','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','c833fc98-3bbc-4fbd-bc59-e5e4e477276b',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6e4cfafc-149c-4fc5-bd88-33f44a048b58','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','fbc2b7c6-45d8-471b-8fe7-b0db03b810f7',1.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('528055aa-b809-45ad-94c1-c0ed78a3b1d6','ae19e955-455d-4d66-bf5f-ddaa7b072aa3','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e4a10bd7-5bee-4baf-bb4f-3e1a6c46b0a4','34ca4755-bc14-4fab-ace1-d05e65130fdd','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',436.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('161774ae-5ca1-492d-b098-e3d45b5cb94a','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',505.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0dd3399a-3a33-4e79-a022-d47d4a6a8732','b1128e18-50e7-414a-90cf-162923794e5e','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b16da6e2-bf01-4851-82e6-54fc031547ea','bf2758db-b306-40a1-b54a-5f4ff066f64c','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f327825f-3e97-4df8-8330-52f1908f24fb','ed7c4476-9a83-4f23-af32-19dbb45712da','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('66cf9db1-529f-4277-addd-d0c33195ffba','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3994586f-0a71-4765-a2a6-253826eb76fa','0a01aca0-c99c-4c9b-9c59-c95719947a96','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',26.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b570155d-a3a8-4473-bdeb-1ac066b33ebc','6a928c43-1c44-4a25-8e15-dfbec035d2a0','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1b0e3e8f-f68b-45eb-bd97-90e740492134','31798bfb-7e06-47c4-846d-73b668aab04b','ae19e955-455d-4d66-bf5f-ddaa7b072aa3',655.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('452fb387-6e54-4bd5-84ab-a1ac475c7101','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('6e7a1b47-441b-4a25-984c-e66eaf151d18','ae19e955-455d-4d66-bf5f-ddaa7b072aa3');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('6b55cc17-c012-4633-b260-b9e08f19b21b',N'Đùi gà nướng với khoai tây',N'Món gà nướng đem lại vị ngon ngất ngây trong bữa ăn chính hoặc có thể là bữa ăn phụ',45,2,'');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('911508b5-bb41-4589-9538-0e19247b77ac',1,N'Sắp xếp các giá đỡ ở một phần ba trên và dưới của lò; làm nóng trước ở nhiệt độ 225 độ C','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c18bfd75-d6bb-48cb-bd54-ad4090768e6d',2,N'Cho khoai tây, hành tây, dầu, hương thảo, 1/2 thìa cà phê tiêu và 1/4 thìa cà phê muối vào tô lớn.','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7c80c7f4-f10d-40b8-aaf1-de87cc1de0b9',3,N'Trải đều trên chảo đã chuẩn bị. Cho thịt gà vào tô, rắc 2 thìa cà phê hạt nêm, 1/4 thìa cà phê tiêu còn lại và 1/4 thìa cà phê muối.','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d4b4cbb5-02fe-4392-a9ac-8e1eb28cfc76',4,N'Đặt gà lên trên rau.','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('955ca5ea-8bb0-46c3-ab7e-58c1c9c92fbc',5,N'Nướng gà và rau trên giá dưới cùng, khuấy một lần khoảng 30 phút','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5237f919-f335-48b6-8f94-0f657cd4137e',6,N'Nướng cho đến khi gà bắt đầu có màu nâu, khoảng 3 phút.','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('feb4afbd-36c8-40ac-ac4f-fd299ac8ed32',7,N'Trong khi đó, khuấy kem và nước cốt chanh với 1 thìa cà phê gia vị thảo mộc còn lại và một chút muối trong một bát nhỏ.','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('518a288a-d7c2-4f5a-8526-e05dff19caf8',8,N'Phục vụ gà và rau với nước sốt.','','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3bacde71-29a9-4ffe-bf25-7ac30950403a','6b55cc17-c012-4633-b260-b9e08f19b21b','bc1cbf9c-b370-4f63-a7cc-4fb1405a7cf2',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0e95749f-4ce3-475c-91dd-ee2ffe20e002','6b55cc17-c012-4633-b260-b9e08f19b21b','5fe4456b-bbce-4d45-ab09-1ab5d34999bc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f9fa2ca7-c66a-4fe8-becb-688858d60b6e','6b55cc17-c012-4633-b260-b9e08f19b21b','8350f254-3eef-48a0-820e-f409e2ce9ab4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('64188745-ad91-4eeb-b816-5332d29a375b','6b55cc17-c012-4633-b260-b9e08f19b21b','f1dd2e2f-ba51-4cb4-86e6-387e33d9dfd1',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3e640b25-a3ce-4c4a-8634-47f9fd201681','6b55cc17-c012-4633-b260-b9e08f19b21b','e544a709-3ae4-49dc-90df-8f4c7b15384e',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0d8e7ef8-ad67-426c-af64-8237cc302690','6b55cc17-c012-4633-b260-b9e08f19b21b','8f9704d8-2b84-44ed-a9fd-f69befe3cda7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a8cdaf3f-04b4-41cd-90a9-1503a43b755d','6b55cc17-c012-4633-b260-b9e08f19b21b','56949342-a104-43ea-a8a0-74def206059c',900.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eda241c7-133e-4ac7-83a1-601475e6217e','6b55cc17-c012-4633-b260-b9e08f19b21b','f3194169-76b7-4b2d-ac25-664c7800eb10',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('12bf6829-84e1-42a9-9d87-48bf1b91893d','6b55cc17-c012-4633-b260-b9e08f19b21b','e0553f0b-f545-4922-a833-2e24f74c7bc6',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e20dc0dc-7439-4b60-8c9c-1cfb49edc3df','34ca4755-bc14-4fab-ace1-d05e65130fdd','6b55cc17-c012-4633-b260-b9e08f19b21b',467.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('14e50000-39f1-4be2-bf1f-d5294046a6d9','7c6b6ad1-7d5e-4c50-b4bb-16cab115f68e','6b55cc17-c012-4633-b260-b9e08f19b21b',552.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('107b76a9-7665-48a0-ba10-47c26b92fd67','b1128e18-50e7-414a-90cf-162923794e5e','6b55cc17-c012-4633-b260-b9e08f19b21b',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('98634161-70e8-4c95-94b6-9401d08c3fa3','bf2758db-b306-40a1-b54a-5f4ff066f64c','6b55cc17-c012-4633-b260-b9e08f19b21b',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('21e248e7-3e0a-4bb3-b7c2-aa0e9b065d2b','ed7c4476-9a83-4f23-af32-19dbb45712da','6b55cc17-c012-4633-b260-b9e08f19b21b',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f659eec4-dc4c-433a-8831-5bdf0be36033','58d7d0b3-2725-4d54-a52d-4b0c1bbe302c','6b55cc17-c012-4633-b260-b9e08f19b21b',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e1cc0a05-961c-45f7-b027-54aaad118af2','0a01aca0-c99c-4c9b-9c59-c95719947a96','6b55cc17-c012-4633-b260-b9e08f19b21b',51.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a3cb282d-a428-44f3-96b4-7046d7f9c085','6a928c43-1c44-4a25-8e15-dfbec035d2a0','6b55cc17-c012-4633-b260-b9e08f19b21b',263.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7914f9ae-a44f-479f-951d-63bf0c8bfa26','31798bfb-7e06-47c4-846d-73b668aab04b','6b55cc17-c012-4633-b260-b9e08f19b21b',713.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2d7fb17f-8960-4d24-9a08-9ec5a0adc253','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('452fb387-6e54-4bd5-84ab-a1ac475c7101','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('82c310ad-2de9-4ab1-a8d8-ef4972e230df','6b55cc17-c012-4633-b260-b9e08f19b21b');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('6e7a1b47-441b-4a25-984c-e66eaf151d18','6b55cc17-c012-4633-b260-b9e08f19b21b');
