USE IMiU

delete from Nutritions
delete from NutritionFacts
delete from Directions
delete from Ingredients
delete from MealIngredients
delete from meals
delete from tags
delete from MealTags

INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('16f19919-ff34-4c41-8d4f-33842e3348fc',N'Béo phì',N'D-Overweight');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('97114c05-61d6-4c18-bfe5-ae1679473562',N'Tiểu đường',N'D-Diabetes');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc',N'Thận',N'D-Kidney');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('00017b26-b9ef-4bfe-9eb1-f058d786b695',N'Dạ dày',N'D-Gastric');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('1614e397-a414-4ff7-a9d1-15b35161828c',N'Gan',N'D-Liver');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5',N'Tim mạch',N'D-Heart');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('b02b38d4-a849-4da1-b121-3a33da522447',N'Cao huyết áp',N'D-High pressure');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('c7557e8c-3575-4ec6-9851-47966f2ab424',N'Chay',N'Vegie');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('4b16584e-daea-4faa-b13d-843ad9047ad5',N'ăn sáng',N'Breakfast');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('2c9b36f4-5dc5-482c-a940-ec514f14007c',N'Kho',N'Kho');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('18ce6030-7cf5-48cb-b6d2-ffe822666225',N'Xào',N'Xào');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('af7a30d7-5f3f-4eaa-9528-800e898d26e9',N'Luộc',N'Luộc');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('cd98f280-6dbf-4d35-94b1-6ebbcc06e651',N'Canh',N'Canh');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('aeb04159-6c92-40fb-8d18-c8777d7b2e5a',N'Gỏi',N'Gỏi');
INSERT INTO [dbo].[Tags]([Id],[Name],[Code])
     VALUES ('52dc3264-05ec-4080-921e-a19c48b178fe',N'Salad',N'Salad');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('92df7117-d1fa-420a-9771-6d7f54fe5d33',N'Năng lượng' ,'kJ');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('9704fb97-1e8b-4b15-9d2d-3287ea28c1c5',N'Calories' ,'kcal');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('71c34c3c-18da-4745-8b7d-4774800170ec',N'Chất béo' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('52c2699b-b628-4499-83d4-d478f7f9c902',N'Chất béo bão hoà' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('6631457d-6680-4faa-aa2b-1e7e21d12bd4',N'Đường' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('73bba7e2-640f-48da-b681-64d79c2ae9e0',N'Chất xơ' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('998ed6be-f894-4d11-bde8-22e46900a926',N'Chất đạm' ,'g');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('1d67d321-d82e-415e-8297-b24427aa46ae',N'Cholesterol' ,'mg');
INSERT INTO [dbo].[Nutritions]([Id],[Name],[Unit])
     VALUES('8239b53c-b2c4-480d-a8fa-2f4660c678be',N'Natri' ,'mg');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('38704066-2901-4bf5-8dd3-70d18ab0fe49',N'táo',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',N'khoai tây',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('c8cf013e-2315-4033-ab51-e1a5959b4745',N'bắp mỹ',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('61c1615a-1c7c-499c-a3a3-2cb1dddca5ad',N'lê',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bd1a6e16-fe65-401e-83f7-076839924cfb',N'xúc xích hun khói',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ef091dc1-3b6a-4a52-b93b-3a05bf37c241',N'đậu hà lan',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d2985015-ad21-4c3a-8f22-608be39f47c0',N'trứng',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('169e7e6a-2518-47a5-b7bf-c6d76ef16079',N'cà rốt',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('23a5a8c3-aa75-419a-a78a-cadd93eac7e8',N'ức gà',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e41475bc-ef90-4ac7-95d0-017c9da58216',N'muối',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('692938d0-e603-4d02-b905-21b2a85d2ff5',N'sốt mayonaise',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bc4f0475-7cb3-4764-86ed-d1b0c2430810',N'đường trắng',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9a6ab83e-211b-4a9e-9036-cbebab2c2d09',N'tiêu đen',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0e26d676-234a-4ab1-a5a0-f5f849bd3540',N'tương ớt',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('770f3d34-b289-44eb-94fd-7b7bb598181d',N'cà chua',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('acaf9c4e-bd3e-4e2f-bf58-a26becf37011',N'hành tây',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',N'dưa leo',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('35141130-f290-471b-aeb8-20d3c0e529ae',N'ớt',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d938f228-5967-4e19-b432-34cf16837fb4',N'tỏi',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('16c62599-983a-4fa3-a938-481bae209e6c',N'ngò rí',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e0ad7d77-7641-47a7-a927-65c0863525da',N'hạt nêm',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('88422078-2f9c-46e5-b938-427a8ba6960c',N'bột ngọt',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('66686732-2eff-404d-a9b5-a42a8f87375d',N'dầu ăn',N'ml','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1135f1d1-d822-4b2e-88ac-d73f1831b271',N'xà lách',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('66561a95-67fb-42e9-bc12-89b0d915b46f',N'trứng gà',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',N'cà chua bi',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6eae1c7f-1f96-4f56-a7a0-05aaddb87661',N'mè trắng rang',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e7a2b737-ce13-47ec-8c30-d31d575f1f5a',N'sốt dầu giấm',N'ml','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('525d2b50-6015-4cb8-b162-c508e24f5e72',N'thịt bò thăn ngoại',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('451a3553-507f-467b-bf94-56cf859c44c2',N'rau má',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ee5b9471-b870-489c-a566-79cb827e91d5',N'lá húng lũi',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('60d4c367-c639-4495-9e04-9de215473b7a',N'dầu oliu',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9bd27c88-9962-4b0c-826a-0ade5d83050d',N'ớt sừng',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',N'nước chanh',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2e99d0a0-3bfd-4e3e-84cc-11d6470d0404',N'dầu tỏi',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ac80f30e-a58d-4ee1-a92a-76f94454551b',N'thơm',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3c4ae0b0-c528-45c5-97a9-23a3ba5173ed',N'cà chua cherry',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fb77748e-9fe5-42d0-82bf-6a591ce82823',N'hành tây tím',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0ba95ab8-d414-4df2-9775-8f51873cd3e5',N'ớt chuông vàng',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('55ee1a92-e916-4f7c-9d57-f64f8d274da7',N'ớt chuông đỏ',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('4ce6c9e7-38df-48cc-b1cf-ee19a1816867',N'oliu đen crespo',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6ea0a3d4-025f-421f-a734-2c5df64ab723',N'sữa chua hy lạp',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3780394f-0315-4b94-84ac-bd75aece697d',N'phô mai trắng apetina',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('cd5349f9-bf34-4ef5-9032-a64fb7a0cd7d',N'giấm gạo',N'ml','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6d8adcbd-aff6-4f6d-9598-7d55e37fd42e',N'nước ngâm phô mai apetina',N'ml','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2d679e49-a61a-4801-b500-2d438b441231',N'tiêu',N'gram','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ab3d8983-9055-48c3-811f-2ffa5bc98c67',N'sốt cà chua',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a3fe9955-6f41-4d1b-8387-80a92380dfa5',N'hành tím băm',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3fea7dea-cad2-49f4-b553-b620713b535b',N'tỏi băm',N'tép','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8a3a342d-d5bc-4e7c-a66c-e931bb355c14',N'gia vị ngâm thì là',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e57d978b-1cb9-449f-b88b-d2f3093033e8',N'thì là khô',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('c794f275-088c-4512-8ffe-1f42f02f09e1',N'cải ngựa',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('87320dac-337e-4dc6-8a91-0567bf2328a2',N'măng tây',N'ngọn','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('48c07b8a-5d75-4921-8d92-8460cc21b360',N'xà lách xanh đầu vừa, xé nhỏ',N'lá','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d4e39161-0266-4245-a9fd-0771ec1d9870',N'cần tây',N'nhánh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b4e0104f-e719-4e89-93f1-7a6d6992d368',N'quả bơ',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('cf33f2ff-8d3f-4c10-bd72-5d6fb17cf900',N'hành lá',N'nhánh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('af4d3416-868e-48c2-b052-5774862d206c',N'thịt cua',N'bát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a71ef499-05f5-41a5-b74a-3be902a2bb24',N'pico de gallo',N'bát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8cad0044-c3f8-4e38-9396-4bf933ef2179',N'multigrain tortilla chips',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1c1b2bfe-6273-4087-8e4f-355cd27774e2',N'dưa chuột ba tư',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b856cf83-246e-463c-813d-8788e8e2f4e1',N'đường',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d1ad0935-0fe1-4d09-82b5-ea94b6673b66',N'hành tím thái lát mỏng',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8bc2ef55-001a-4e2f-8e60-854c255ceb2a',N'thì là tươi xắt nhỏ',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1480cf04-7737-477e-ab53-fb7706420995',N'giấm rượu trắng',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fdf663ca-8e17-4586-a9aa-d60073a63fe1',N'lá trà xanh sencha',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('608be072-fa03-4488-aa38-1253d34c6370',N'nước nóng',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a40c4d27-99c2-4cec-abb7-c002ad91c4b6',N'giấm trắng chưng cất',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bd0e8933-e850-4397-8097-2630f16ff89d',N'bắp cải xanh xắt nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('cdbbe1df-2646-4719-ba89-f71e7a69a9be',N'ớt serrano',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d8ceaa7b-5434-48a4-bcde-9abc83292f90',N'tỏi chiên',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e8e57a25-7d91-441b-b593-c0a263de2b02',N'bánh mì nướng cắt nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9e2a3d68-b3cd-4821-bc41-bb5b367f98d5',N'đậu hà lan chiên vàng',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3371e1dc-901d-492f-be54-2c475e3b899a',N'nước mắm',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3c5883ae-22da-43b6-8961-56795425ac0c',N'rau mùi tươi xắt nhỏ',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('564bdb70-2080-4bf0-80c7-45b93da1214e',N'cà rốt cầu vòng thái lát',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9941fe19-0a70-4907-b240-ab1c07f12e0f',N'củ cải thái lát',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('7949021a-2982-4820-bfb1-268f6a64dacf',N'farro nấu sẵn',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('25e8ca30-60af-4281-b32a-48e2f3418680',N'đậu xanh đóng hộp',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('22a84949-04f7-408f-b5ff-3df76dd0adac',N'lá ngò tươi',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5910feab-2f62-4229-bb39-29e3aa451a96',N'mật ong',N'thìa cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('44c756f6-d376-49b0-ae34-60cba7cbe17a',N'hạt dẻ cười đã bóc vỏ và nướng',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2f1e09e8-d5d8-4014-8dd3-f1682c06a485',N'sốt xì dầu',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('4dc1da77-eaae-40c5-a9c0-c9f8e9cd0998',N'củ hành thái nhỏ',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bd889820-6039-4277-a14c-a5897e21cb5a',N'giấm rượu vang đỏ',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('7e22c6f5-11b7-40fb-9950-d43fbe1c0850',N'nho',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e72d646c-1f41-4b25-bd41-47ed87296835',N'nụ bạch hoa non',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3c3f90b9-2827-47e7-9682-de118bcff623',N'hẹ thái nhỏ',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('73924227-4505-40dc-a50d-ab8be584fc92',N'cá ngừ ngâm dầu',N'hộp','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ce4ea144-6ca0-4f08-978c-d934007390b9',N'phô mai feta vụn',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a26668d2-4f45-4e80-80c1-6586f64e55e7',N'rau bina baby',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b59f5e9d-ac11-4f0c-a3ba-ae626d1771c0',N'cải xoăn xoăn và bỏ cuốn',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('13331cad-991b-48a3-9ced-90dfd7d75cfa',N'việt quốc',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ab67a610-dd43-4f09-9092-5fb4f0301e18',N'cà chua bi vàng',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8e3bf307-a55a-499d-b5ae-15ea010403b4',N'edamame nấu chín',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e751c2dc-dea8-4281-8a24-fca824169bf1',N'hạnh nhân thái lát',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3743a2be-2065-48a5-9391-29da30c87a82',N'phô mai để vụn',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('638274c7-a8bb-4d20-a3b3-766ad92a9dde',N'mù tạt dijon',N'thìa cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('76575f78-e50d-424b-b244-16a5083e407f',N'xà lách romaine xắt nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3b1279b6-df80-40d0-a1dc-e11d7e1f10b3',N'sốt phô mai xanh',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('44ffdfb9-bdfe-4ea4-8f6c-0efd1b760ee7',N'nắm nút trắng',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('47204ccc-becf-45d7-a760-9828b161864d',N'thịt gà nướng',N'lạng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b19126ae-a600-40ec-9c29-c2a21444267e',N'trứng luộc',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('19eca04c-1a89-4893-8cd1-320194a089f2',N'đậu cannellini',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0d8dfb33-6c69-430f-8cb6-e71bb6880bca',N'dâu tây',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0a896963-de38-4d37-befa-6c8326f297e2',N'quả óc chó',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ae659ca8-4df1-4d6f-8e85-b58279da8d50',N'rau củ tổng hợp',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f8ea0819-d0b8-42a2-a430-b71465b635c1',N'cá hồi nướng',N'miếng phi lê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8bc76aee-1f09-4812-af3c-74efdc21913a',N'hạnh nhân nướng',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bb08a9d8-6a59-47c6-8846-3826c86a2174',N'phô mai parmesan bào',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('4979b2d8-17b3-49bd-b4ae-809bad62bc57',N'giấm balsamic',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e86a3365-2fc8-4422-bd91-2b8aaf01e8e4',N'peta lúa mì nguyên cám',N'gói','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9dce792a-191a-4d21-a57b-ac156c32a0a9',N'sốt hummus',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fb564db3-e9ac-4796-a9aa-70acbcb43780',N'quả bí',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6bf0746b-7123-47ce-ac26-fc175490b786',N'dầu ăn dạng xịt 0 calo',N'chai','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3bbac6cd-1c4e-4481-a0a0-d9bece06ffa3',N'oregano tươi',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('26f3185f-d27f-4c96-ae78-b7328e6e0752',N'hành vidalia',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d0ea8f73-92fa-4573-8a67-c65a15238902',N'bắp tách vỏ',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('20ea6721-4b11-4209-8d7b-80fe6683d854',N'hạt hướng dương',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('05b70230-3ea3-48b6-ad24-59364e888d13',N'bánh tortellini phô mai đông lanh',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('c58bad8a-f744-4672-9e60-3fa199aa0ef5',N'oregano khô',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5301f7d1-6703-49fc-a46e-1db0d4b7396d',N'đậu gà',N'hộp','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('961a5fb0-d012-4660-9a7b-6824fcf09f70',N'cá mòi có xương ngâm dầu',N'kg','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('436cf8d5-72af-4f54-9fbf-3588058f6b1a',N'quả sung khô bỏ cuống',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('86d13dcd-6a4d-4118-ba78-f97eeb36306f',N'phô mai dê tươi',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f4867f34-9069-4b2c-996b-0bc2332cdd5d',N'hạnh nhân cắt nhỏ',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('001bb2b0-6b4f-4ad4-8f99-79ef8dd1e279',N'ớt xay',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6c446e73-566c-441c-9088-6dac8acb86f1',N'ớt đỏ nghiền',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a6e586f5-3370-4062-993b-59365fc8397d',N'quinoa nấu chín',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a610d85d-4c04-46d3-a67b-4320f0c03fba',N'dưa chuột kiểu anh',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('cb958a51-cb6a-4cff-b7bc-d78de47bcbe4',N'ô liu kalamata bỏ hat',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('596b6db3-5ca6-4a44-ad9f-1adb80054408',N'bắp cải xanh thái nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b3ef6d49-ec64-43f9-b1db-efa920adb4db',N'cà rốt nghiền',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('511142c2-41c3-4cdf-b8f7-3b4207c68abe',N'mù tạt nguyên hạt',N'muỗng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ace11f0d-fdac-4053-9ac9-f5c173d6c41b',N'tiêu đỏ xay',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9f2bb50f-02de-4bd2-bcb9-112597ecec4c',N'tahini',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e5d6c8f9-0812-470f-9b00-2b25dd5cdfab',N'thảo mộc tươi thái nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f03f7bb1-2e19-4cbf-ba6d-256e7866c9d5',N'đậu tây',N'lon','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bbc957a9-f61c-4b89-a80e-2cbbf7fb2270',N'kem chua giảm béo',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6abb0633-fa37-454f-a763-23dd057fdfdd',N'salsa',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('526fcaa9-3fb4-4ee9-8e5b-27e09ca72412',N'bột tỏi',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bf45184b-c8cf-4f77-b5f0-b09952a5f5b6',N'bột hành',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e96fcd1e-7b8f-4f58-aa72-ab890f2f65fa',N'đậu đen đóng hộp',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9b515b95-6af6-4bd5-8074-69f9f7c0868d',N'phô mai colby jack bào nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('23734b23-e343-4da4-9229-d6a3139afc7f',N'cải xoong cắt nhỏ đóng gói',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b068cb3c-bf42-49f7-836e-db768d73cd8b',N'đậu phụ nướng mật ong',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5479df71-16f6-4057-b7f4-bfa0880300e7',N'xoài tươi cắt nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d7951c4e-80d0-4901-93d8-43ef539db03f',N'phô mai provolone',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('20698ed3-9cd9-49b3-bab5-bf33d5e8a967',N'củ hành đỏ thái lát',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('00034f24-529b-4182-865e-7282b36852ba',N'sốt worcestershire',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0787130c-4149-4a2a-86c6-2aa16586e4dd',N'ớt đỏ rang',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('31c71e81-862d-4e38-95fd-9ac6dbe324f2',N'củ cải vừa',N'bát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('33dfff03-0ee3-4a12-8ea5-b7b3007e13aa',N'nước cam đông lạnh',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0b4528b8-7c0c-4c39-a6e2-097165869c04',N'quả cam',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ffe15916-3813-49d2-b0cb-834de57f2f4c',N'vụn bánh mì panko',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('539766e0-658e-4a99-bb90-c16c5ae8626b',N'rau arugula',N'gói','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1f5fbb6a-19e7-42c9-8c23-f3e62d3263ed',N'radicchico',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('df2b4b45-dd91-42d9-948c-6e1ab591408a',N'mozzarella',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d7655e36-3650-4446-b4f5-54d7f380fa9f',N'vỏ cam nạo',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1989cf12-af34-4fde-892e-2a138463ce6c',N'nước cam',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a39fef12-b1da-4b6c-96f2-d96fa033b016',N'cải xoăn bỏ cuống',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('54165bc2-a44e-4b7d-b2f0-51d36fec28e0',N'nam việt quốc khô có đường',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('705949d3-cee4-4db9-80bd-805093040b66',N'thịt xông khói',N'lát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f0b88a27-28eb-4f40-ba0a-aca38f9e1b37',N'kem chua',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5a4ff431-4166-45b9-9c59-eb417af5ee49',N'bông cải xanh thái nhỏ',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('4a3f621a-17f4-48d8-a05e-4db58033ffe9',N'cheddar sắt hạt lựu',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2ee16117-3cf7-472f-9485-4ba4ca94be9d',N'sả',N'cây','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a6d4322e-e06a-4edb-ac87-91a4eebac40b',N'gừng',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('16eda913-da50-4711-90c4-7bbbf507e1d1',N'hành',N'cây','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('10ea70bf-5c23-421a-8fec-8bb05e00d13d',N'vắt me',N'hộp','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('df069702-6f47-45ec-b135-21085fca5e98',N'ngao sống',N'kg','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8d7ac445-aa85-4791-a76e-daff0078fb29',N'dọc mùng',N'cây','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('eceb7d00-f645-46ef-9ba5-14715f6c6482',N'đậu bắp',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('334b9883-f828-4e6e-9f70-6ac77c1a6adf',N'hành tím',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6477b319-07f2-407b-bf74-a6fa8c3c3d7a',N'sấu',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fce4620d-51e3-4cd6-8143-a1386bd71848',N'thì là',N'nhánh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fceda5b2-9c26-4a06-88e3-f508837891c0',N'nghệ',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ea6f6bd8-f6f6-440d-a76c-44f2f36413dc',N'cá lóc',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('794ecc8a-9042-4e4d-87fa-8fd5c9ef5e5a',N'giá đỗ',N'lạng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('c881b40b-6ed6-46a9-a1fd-e85dc95099d3',N'chanh',N'trái','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('47265f9c-9c95-41f7-a759-b0d2ab5ed398',N'thịt heo xay',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('14094c14-951b-4d84-9d23-d9c81db2a9eb',N'súp lơ',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('c05d5eac-ae3f-43fe-a347-453c11b64d27',N'ngô bao tử',N'trái','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a4546e0c-0056-4e69-8f59-e7fe7f041d42',N'thịt bò',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9181d60a-68b9-44fc-9f16-854d5c2cc7a4',N'kim chi',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ea8e4f8b-a9ee-4617-a102-54f1cfd3fd9c',N'đậu phụ',N'miếng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('411d087b-0dc8-4626-a256-99e16604766b',N'tỏi tây',N'cây','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6d627c8d-bee4-435b-9a5c-e897ed94646e',N'thịt gà',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b7a9e6be-ebdf-4162-a4bf-aeb3db6ec5f0',N'củ sen',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('658e2b15-5958-4b7f-9840-3ac70c421730',N'nấm hương',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5ffe71b3-62dc-4715-a3a2-eeaad1ca7598',N'mồng tơi',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ae880451-0986-4db9-9185-8f7855d00c57',N'măng tươi',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f9c9fd62-d998-4e02-b025-218aefa09fba',N'cà tím',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d7bf2767-ba8f-495e-bf45-2481c3831f1f',N'heo ba chỉ',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0b4bcfee-3d15-435a-abe2-8df4f594b11d',N'cơm mẻ',N'thìa','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('1e26847c-49b3-44fe-8ef0-f844d5f9008e',N'xương heo',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('469dd1e0-f903-4b82-ad7d-b1c8392f2d5b',N'tôm',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a892ea5b-9b7f-469d-af3e-4caf369fc2c9',N'lá é trắng',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('728aa51b-5fb9-43e9-9b9a-2208fdc3f979',N'giấm',N'ml','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('57f1e222-17f9-4269-bec7-77e501410e35',N'nấm mèo',N'tai','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('380bb753-d5f6-40c3-8385-78e2bbbb344c',N'cá chép',N'con','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d0ff1762-a4ab-492c-b256-242fa8bf3307',N'cá diêu hồng',N'con','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('76a14b4e-ce0e-4ae2-bf67-4fac2d37c846',N'rau cần tàu',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('271f4e35-553e-45d0-b3e9-a50b1ce9f910',N'bí đỏ',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9215e807-b6cc-44ef-a55b-a2ccbcddafeb',N'khoai mỡ',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2c681d45-deab-4a68-a9ca-5d739b133721',N'bắp',N'trái','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('de475e50-f4d0-4284-ab1f-ebef03839000',N'nấm rơm',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('86b26f0d-415a-4767-bfad-6a7237a20012',N'su su',N'trái','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('fd839269-45f6-4773-b08e-f85c105fa5ee',N'hành boa rô',N'cây','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ac439f9d-aa39-4357-a541-132cba3f6736',N'atiso',N'bông','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e3485a95-d5ed-4951-9aaa-dcbdd45092ac',N'nấm bạch tuyết',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('40586e8a-d14b-4c1d-bfab-6ae17a95ed69',N'hạt sen',N'gr','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('33502109-1cbc-4238-a6e7-2a647a5e4640',N'húng quế',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ee8e4240-af95-4310-be13-f5daf58691f9',N'cá hồi',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('a34c0eec-5b1f-41fd-93d1-ed10ad524a30',N'vụn bánh mì',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',N'dầu olive',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('8ed8864e-1f5f-4593-ac9f-170cdde3477b',N'dầu mè',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('ec926ca8-4df0-46d1-b150-a542f16c161f',N'đậu que',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('aca4cefb-f0a7-4d5e-86f2-890b15af7fda',N'bơ',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3f2bdf45-02f5-456d-a5b0-d7792645b980',N'ớt chuông',N'quả','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9c1e6bb4-a1b4-4638-8ec4-f4ef9dc779e4',N'sốt tương ớt',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('7d3a888d-541d-4569-9816-dea520471bf4',N'bột mì',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('89d83686-a86e-45d6-b83d-5ddd1c4fcb1e',N'nước dùng thịt bò',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('75796448-6575-442b-aa95-00b060ce70db',N'bột nở',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d9fcb4d0-f792-40e8-9b98-61defa4f876b',N'bơ cục',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5e5a7922-33dd-41ba-8887-ed05f71ece4b',N'bơ sữa',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('efceb02c-d52e-4821-bca2-337770ec853f',N'cải xoăn',N'bó','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('54e75d05-b6c3-49c4-a8a2-41a8e62f6ac2',N'sữa chua',N'cốc','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('03e26134-35df-4228-8b56-6d403a163af1',N'nước cốt chanh',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0a621540-e3c5-4f04-b6af-cf0276eb16e8',N'kem nguyên chất',N'bát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('393cc049-7315-4ce5-bf4a-0102eedf381d',N'rau xà lách',N'bát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('bc3a9e74-2be5-4fac-b064-990ca8f7b80f',N'tấm cuộn sushi',N'tấm','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('60b85c2f-4c45-4179-b320-37aa0cd9039e',N'gạo',N'bát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('7d9d5f2c-f851-4229-b93d-dabca5416ce4',N'hạt mè',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('6bc051e7-1b8c-4cc0-90a4-2db023a84dd3',N'bánh mì',N'lát','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9ca7bcff-e5ee-4f5b-8b77-59792553b388',N'bột quế',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('5b339239-9589-4b91-846f-7042177c3e34',N'đinh hương',N'muỗng cà phê','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('47baae7e-cef8-40ea-b008-47e720533710',N'rượu vang',N'ly','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2c937db3-edf4-491e-893f-a61cdb43721f',N'sườn bò',N'miếng','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('c632668a-22d3-4a2d-8830-bbbeb8e0aa04',N'dấm',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('0ce6b220-8612-44b6-9f64-7456fd2db886',N'bột bắp',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9eab6829-cd60-4ab5-b47c-0b0c8737fa51',N'nước trắng',N'ly','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('88d4fd3d-ce2d-438a-ba72-9cab5ae1c7a7',N'nấm thảo mộc',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2bd769bd-570f-4e51-8365-879a21972ad2',N'củ cải',N'củ','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('87987880-0a96-422e-a521-2713e77fbd67',N'thịt heo',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('7e8b3a78-1456-4bd9-b5df-9491794b1af2',N'rau chân vịt',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('e75f240f-cbe0-4664-827b-54640cf6ddbb',N'bột cà ri',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('d36fc48e-fbba-442e-88bc-9ed7628ba53e',N'dứa',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('34dcee1b-8156-4c15-91d5-c3b20854621a',N'xì dầu',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('93d93289-1e10-446d-afcb-05938dfcdc8e',N'đùi gà',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('80c9697d-769d-4bdc-84e7-f2f808808828',N'nước dùng gà',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b3168ea1-28b3-4ad1-9806-b7b2a58ef13f',N'đậu xanh',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('90556bb9-ca8e-4b3e-a950-6b7fb03f1739',N'tim atiso',N'chén','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('3193e40f-787e-4ba4-8df8-e0f1ac7c1408',N'cá tuyết',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('27f481eb-7a2c-4fcd-8ede-4847e6df6f7b',N'nước tương đen',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('2b625f42-fd18-4fbf-8816-2821d19f8e16',N'tương đen',N'muỗng canh','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('b8060da2-174a-4e55-a8f7-acf1c7c89045',N'mì',N'g','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('9d660fbe-8b2e-49bc-b696-c554a9371e20',N'bia',N'lon','');
INSERT INTO [dbo].[Ingredients]([Id],[Name],[Unit],[ImgUrl])
     VALUES('f627f161-878e-4578-9886-afe027c1fd12',N'nước dùng thịt gà',N'chén','');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('32487991-8c3c-4392-903c-30ec11b01817',N'Salad củ quả ( phục vụ cho 4 người ăn )',N'Salad Nga là món ăn khai vị thanh đạm được làm từ rau củ tươi, đây là món ăn với cách làm đơn giản nhưng ngon và kích thích vị giác, giúp giữ gìn vóc dáng, cải thiện sắc tố làn da đặc biệt rất thích hợp với chị em phụ nữ.',20,1,'https://monngondongian.com/wp-content/uploads/2022/11/horiatiki-greek-salad-today-041618-tease_79c5041ae6a58da5e333029bbe2c4b88.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('36b9d6a3-dbc6-4806-92ff-e22eeb1bf324',1,N'Sơ chế nguyên liệu

Cà rốt và khoai tây đem gọt vỏ rồi cắt khối vuông. Bắp mỹ tách lấy phần hạt.

Lê gọt vỏ, cắt miếng vuông rồi bỏ vào tô nước đá ngâm cho lê giòn, trắng, ngâm khoảng 15 phút thì vớt lê ra. Xúc xích hun khói cắt miếng vừa ăn','','32487991-8c3c-4392-903c-30ec11b01817');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('27a28412-3cb5-433a-94b8-488fc11dff6e',2,N'Luộc rau củ

Bạn bắc nồi nước sôi lên bếp sau đó cho thêm 1 muỗng cà phê muối đun cho nước sôi rồi cho rau củ vào luộc, bỏ khoai tây, bắp và cà rốt vào luộc trong thời gian khoảng 7 phút, sau đó vớt rau củ ra và ngâm chung vào tô nước đá đang ngâm lê để rau củ giữ được màu sắc và giòn ngon.

Tiếp đến bạn cho đậu hà lan vào luộc khoảng 10 phút và vớt ra bỏ vào tô nước đá đang ngâm củ quả, ngâm tiếp.

Sau đó bạn bỏ xúc xích cắt miếng và 2 quả trứng gà luộc vào ngâm chung.','','32487991-8c3c-4392-903c-30ec11b01817');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('587cb26d-d5c4-4986-83db-72e4d08a5e44',3,N'Trộn salad

Bạn vớt tất cả các nguyên liệu đang ngâm đá ra để ráo nước. Riêng trái trứng gà bạn tách phần lòng trắng ra riêng cắt miếng vừa ăn còn phần lòng đỏ riêng và nghiền nhuyễn.

Bạn bỏ phần lòng trắng trứng cùng các loại củ quả: cà rốt, đậu hà lan, lê, khoai tây và cả xúc xích ra tô sau đó rưới lên trên lớp mayonnaise, tiếp nữa là lòng đỏ trứng gà nghiền nhuyễn sau đó dùng muỗng trộn đều vậy là bạn đã hoàn thành món salad Nga rồi.','','32487991-8c3c-4392-903c-30ec11b01817');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d4f5fe91-4524-4758-8064-af41a1e698b3',4,N'Thành phẩm
Món salad Nga củ quả có màu sắc vô cùng đẹp mắt, hương vị giòn ngọt từ các loại củ quả, quyện cùng vị béo béo của sốt, kích thích vị giác.','','32487991-8c3c-4392-903c-30ec11b01817');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1fcd6239-f3fd-4de6-924a-a76db1451979','32487991-8c3c-4392-903c-30ec11b01817','38704066-2901-4bf5-8dd3-70d18ab0fe49',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c736bc7a-69bb-4b10-a097-ebdfda7d1432','32487991-8c3c-4392-903c-30ec11b01817','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('51b8ec1e-2973-4406-998a-1d540e231c9e','32487991-8c3c-4392-903c-30ec11b01817','c8cf013e-2315-4033-ab51-e1a5959b4745',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4e0c974e-927b-42ff-b9ec-cd31ece097c4','32487991-8c3c-4392-903c-30ec11b01817','61c1615a-1c7c-499c-a3a3-2cb1dddca5ad',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('92dbb2f9-e8f5-4ea1-9f26-87eb0460c937','32487991-8c3c-4392-903c-30ec11b01817','bd1a6e16-fe65-401e-83f7-076839924cfb',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2af43c0a-8feb-46d2-a8dc-ab708946d702','32487991-8c3c-4392-903c-30ec11b01817','ef091dc1-3b6a-4a52-b93b-3a05bf37c241',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3f4a4ea4-3856-40e4-a2a6-4387c7b4c560','32487991-8c3c-4392-903c-30ec11b01817','d2985015-ad21-4c3a-8f22-608be39f47c0',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b7807de9-87b4-461d-b66c-3cc8073ca046','92df7117-d1fa-420a-9771-6d7f54fe5d33','32487991-8c3c-4392-903c-30ec11b01817',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4cffee2b-7d99-48d4-90f8-2b354e9314fe','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','32487991-8c3c-4392-903c-30ec11b01817',350.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cd6876b2-d087-4472-986c-7516ec8cf544','71c34c3c-18da-4745-8b7d-4774800170ec','32487991-8c3c-4392-903c-30ec11b01817',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9daf3d78-0f5f-4035-a094-589482dd93f1','52c2699b-b628-4499-83d4-d478f7f9c902','32487991-8c3c-4392-903c-30ec11b01817',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f98e7c85-34c0-4826-a330-886a4a494424','6631457d-6680-4faa-aa2b-1e7e21d12bd4','32487991-8c3c-4392-903c-30ec11b01817',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7881234d-ef36-4e89-9575-b958919a0a20','73bba7e2-640f-48da-b681-64d79c2ae9e0','32487991-8c3c-4392-903c-30ec11b01817',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('df18ee8c-c468-46e2-a5e6-095164a0a4fa','998ed6be-f894-4d11-bde8-22e46900a926','32487991-8c3c-4392-903c-30ec11b01817',34.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4fbe5022-995d-46d8-8b8c-1a36148dbf6c','1d67d321-d82e-415e-8297-b24427aa46ae','32487991-8c3c-4392-903c-30ec11b01817',126.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d207ca72-56c8-47b1-9f1e-bbc07725a627','8239b53c-b2c4-480d-a8fa-2f4660c678be','32487991-8c3c-4392-903c-30ec11b01817',761.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('af7a30d7-5f3f-4eaa-9528-800e898d26e9','32487991-8c3c-4392-903c-30ec11b01817');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('d6b6088e-ca7e-4e03-979f-a50578265adf',N'Salad Nga trộn với táo ( phục vụ cho 4 người ăn )',N'Món xào đậu que và thịt bò này được nấu với tiêu trắng thơm, dầu mè, gừng và tỏi. Phục vụ với cơm trắng.',20,1,'https://mykitchies.files.wordpress.com/2017/10.5017-11-08-00-18-581835516759.jpg?w=1400');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e9d96cf7-48cb-4f83-b807-403b16cc7ff8',1,N'Sơ chế nguyên liệu

Khoai tây, cà rốt bạn lột bỏ vỏ, cắt thành khối vuông. Bắp bạn tách hạt.

Ức gà đem đi rửa sạch

Bạn bắc nồi nước lên bếp rồi cho các nguyên liệu gồm: Khoai tây, cà rốt, trứng gà, bắp hột và ức gà vào luộc đến khi chín.

Sau đó lấy ra và cho vào ngăn mát tủ lạnh để khoảng 3-6 tiếng cho các nguyên liệu săn lại. Rồi lấy ra thái hạt lựu. Đem táo bỏ vỏ và thái hạt lựu.','','d6b6088e-ca7e-4e03-979f-a50578265adf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('247c5a2f-c0f8-42ab-993f-7c340e540912',2,N'Bạn cho tất cả các nguyên liệu đã thái hạt lựu vào tô rồi thêm vào: ½ muỗng cà phê muối, 1 muỗng canh đường và 4 muỗng canh sốt mayonnaise, trộn đều lên là được.','','d6b6088e-ca7e-4e03-979f-a50578265adf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('74eb64c2-e6ce-4af3-9d0b-5c40b5a70084',3,N'Bày salad Nga trộn với táo ra đĩa sau đó thưởng thức ngay bạn sẽ thấy món salad giòn, ngọt, thanh đạm, ăn rất mát miệng.','','d6b6088e-ca7e-4e03-979f-a50578265adf');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1fb3ddac-7c37-4027-9472-a3a65eba091a','d6b6088e-ca7e-4e03-979f-a50578265adf','38704066-2901-4bf5-8dd3-70d18ab0fe49',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7aabc255-a488-4daf-ab4b-e761678ad8ab','d6b6088e-ca7e-4e03-979f-a50578265adf','169e7e6a-2518-47a5-b7bf-c6d76ef16079',230.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5fe5b774-6e44-4f60-b0ec-760e006e0110','d6b6088e-ca7e-4e03-979f-a50578265adf','38704066-2901-4bf5-8dd3-70d18ab0fe49',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('038984a3-4880-42b8-ad15-4e17167200a8','d6b6088e-ca7e-4e03-979f-a50578265adf','23a5a8c3-aa75-419a-a78a-cadd93eac7e8',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aedcabad-45eb-4e7c-91f9-9dc32e2edb4d','d6b6088e-ca7e-4e03-979f-a50578265adf','c8cf013e-2315-4033-ab51-e1a5959b4745',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1c972a63-8739-4cc6-9ff0-4a0c718117d7','d6b6088e-ca7e-4e03-979f-a50578265adf','d2985015-ad21-4c3a-8f22-608be39f47c0',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('616dd801-efcf-42d6-9462-9255c64f2fb5','d6b6088e-ca7e-4e03-979f-a50578265adf','e41475bc-ef90-4ac7-95d0-017c9da58216',20.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8d026a79-8e47-4efd-8469-72a5d154de05','d6b6088e-ca7e-4e03-979f-a50578265adf','692938d0-e603-4d02-b905-21b2a85d2ff5',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0253dd29-66f4-47d7-873e-1c2be7e73aa2','d6b6088e-ca7e-4e03-979f-a50578265adf','bc4f0475-7cb3-4764-86ed-d1b0c2430810',10.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('78e3fc81-246c-4814-8df6-31972ca38b24','92df7117-d1fa-420a-9771-6d7f54fe5d33','d6b6088e-ca7e-4e03-979f-a50578265adf',220.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b525b826-3e9b-4c20-9c17-272a1e98e69e','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','d6b6088e-ca7e-4e03-979f-a50578265adf',294.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6bf47dd6-e254-4338-bec4-5d53802acf7f','71c34c3c-18da-4745-8b7d-4774800170ec','d6b6088e-ca7e-4e03-979f-a50578265adf',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e8c4265e-591d-4f34-9fe0-b7f15416b34e','52c2699b-b628-4499-83d4-d478f7f9c902','d6b6088e-ca7e-4e03-979f-a50578265adf',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('967a870a-3a09-4024-bf45-e4df2b5b1d1f','6631457d-6680-4faa-aa2b-1e7e21d12bd4','d6b6088e-ca7e-4e03-979f-a50578265adf',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ca3fffac-93a4-4b9e-ac6c-f55cc148f9cd','73bba7e2-640f-48da-b681-64d79c2ae9e0','d6b6088e-ca7e-4e03-979f-a50578265adf',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3e32e991-2d5e-4c8a-8154-5992ba3f0a92','998ed6be-f894-4d11-bde8-22e46900a926','d6b6088e-ca7e-4e03-979f-a50578265adf',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('915bd8c1-443e-4618-a4dd-6ce8ad8c1010','1d67d321-d82e-415e-8297-b24427aa46ae','d6b6088e-ca7e-4e03-979f-a50578265adf',37.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e2a3a7ff-7a69-4418-afeb-a9225eac683c','8239b53c-b2c4-480d-a8fa-2f4660c678be','d6b6088e-ca7e-4e03-979f-a50578265adf',526.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('18ce6030-7cf5-48cb-b6d2-ffe822666225','d6b6088e-ca7e-4e03-979f-a50578265adf');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('809ebe5d-b74b-45b1-82fd-3d7d16f36d76',N'Salad Nga với sốt Kewpie',N'Salad Nga là món ăn khai vị thanh đạm được làm từ rau củ tươi, đây là món ăn với cách làm đơn giản nhưng ngon và kích thích vị giác, giúp giữ gìn vóc dáng, cải thiện sắc tố làn da đặc biệt rất thích hợp với chị em phụ nữ.',40,2,'https://cdn.tgdd.vn/Files/2020/10/31/1303545/2-cach-lam-salad-nga-ngon-dung-chuan-nhu-ngoai-hang-202202171530124298.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('67105649-bca2-49ca-9a1c-09d9f97863cd',1,N'Đầu tiên cà rốt và khoai tây bạn cạo vỏ, đem cắt hạt lựu. Bắp thì bạn tách lấy hạt. Đậu hà lan rửa sạch, để ráo.

Trứng gà thì bạn luộc với nước sôi đến khi chín thì vớt ra rồi lột vỏ.','','809ebe5d-b74b-45b1-82fd-3d7d16f36d76');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4925b853-fada-484e-a480-1a81e682c6ef',2,N'Bạn bắc 1 nồi lên bếp sau đó cho nước vào. Đợi nước sôi thì bạn thêm 1 muỗng cà phê muối, 1 muỗng cà phê đường vào.

Tiếp tục cho khoai tây, bắp và cà rốt, đậu Hà Lan vào luộc. Khi thấy rau củ và đậu chín thì bạn vớt rồi cho vào tô nước lạnh.','','809ebe5d-b74b-45b1-82fd-3d7d16f36d76');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c9c9afe0-182c-41f9-bf80-c85ed4a86317',3,N'Bạn vớt tất cả các nguyên liệu đang nước ra để ráo nước. Sau đó bạn thêm vào tô 1 muỗng cà phê đường, 1 muỗng cà phê tiêu và sốt mayonnaise kewpie rồi trộn đều để rau củ thấm vị.','','809ebe5d-b74b-45b1-82fd-3d7d16f36d76');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b7ce6a1a-0256-4556-a75a-cd5dba984f4c',4,N'Chỉ với 1 vài bước đơn giản là bạn đã có ngay món salad Nga gồm đầy đủ hương vị, màu sắc đẹp mắt. Rau củ giòn ngọt hòa quyện cùng nước sốt beo béo, thơm ngon vô cùng. Hãy thử vào bếp để làm ngay món salad này nhé!','','809ebe5d-b74b-45b1-82fd-3d7d16f36d76');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f3dc99f1-b17b-48c3-a000-ac06760833a8','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1131dc48-0df7-4b2a-a39d-50fca11da2f0','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','169e7e6a-2518-47a5-b7bf-c6d76ef16079',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('757e9071-d372-4e64-a2be-26540a0b0160','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','ef091dc1-3b6a-4a52-b93b-3a05bf37c241',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e3315245-00ca-4b7f-a3ea-64f2aef34bd2','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','d2985015-ad21-4c3a-8f22-608be39f47c0',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aab17440-2296-476a-a95b-87c3e3d64e3f','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','c8cf013e-2315-4033-ab51-e1a5959b4745',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3ab734d3-43b0-4df4-86e1-b28e8cd05e73','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','e41475bc-ef90-4ac7-95d0-017c9da58216',5.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ed4d6fba-dd7b-4d6c-836f-3c55aee1d2c8','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','bc4f0475-7cb3-4764-86ed-d1b0c2430810',5.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0490969e-626e-47c2-af7a-ef298fa93264','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','692938d0-e603-4d02-b905-21b2a85d2ff5',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('00e71d05-23df-4fa9-8903-ad9b16c96d14','809ebe5d-b74b-45b1-82fd-3d7d16f36d76','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',100.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d1709963-bb92-49fd-a7f1-6eb46d985997','92df7117-d1fa-420a-9771-6d7f54fe5d33','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',260.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0bfb8abe-2a1c-4bac-93fa-57718a30e7a7','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',342.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4607a688-1374-4038-8437-924c70abec7c','71c34c3c-18da-4745-8b7d-4774800170ec','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bcd9315b-59e6-49fc-b42b-bcbea72f70f6','52c2699b-b628-4499-83d4-d478f7f9c902','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('86b09131-fce4-4c47-a8ae-2b0ae637414a','6631457d-6680-4faa-aa2b-1e7e21d12bd4','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a429297c-e2cd-47e1-9da4-f3ad9d93141f','73bba7e2-640f-48da-b681-64d79c2ae9e0','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4e26e78a-b2bc-4251-bca2-282adca949e3','998ed6be-f894-4d11-bde8-22e46900a926','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bca71a70-8541-4192-a5ca-46adcc8a7f7e','1d67d321-d82e-415e-8297-b24427aa46ae','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',74.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('34651a4e-a920-4fb7-bded-0dd23f7ea03e','8239b53c-b2c4-480d-a8fa-2f4660c678be','809ebe5d-b74b-45b1-82fd-3d7d16f36d76',499.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','809ebe5d-b74b-45b1-82fd-3d7d16f36d76');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','809ebe5d-b74b-45b1-82fd-3d7d16f36d76');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('85a68c44-a67b-48f3-849f-8240eefe57a5',N'salad dầu giấm',N'Salad Nga là món ăn khai vị thanh đạm được làm từ rau củ tươi, đây là món ăn với cách làm đơn giản nhưng ngon và kích thích vị giác, giúp giữ gìn vóc dáng, cải thiện sắc tố làn da đặc biệt rất thích hợp với chị em phụ nữ.',45,3,'https://cdn.tgdd.vn/Files/2021/08/06/1373466/huong-dan-lam-mon-salad-dau-giam-thom-ngon-bo-duong-de-lam-tai-nha-202201081510043817.jpeg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('97ed7d4b-91a9-4845-b924-b6f2862f534c',1,N'Xà lách bạn loại bỏ những phần lá bị đen, sau đó bạn ngâm xà lách qua nước muối loãng trong thời gian khoảng 5 phút rồi rửa lại với nước và cắt thành các miếng vừa ăn khoảng 3-4cm.

Cà chua bạn rửa sạch rồi cắt thành những khoanh tròn mỏng.

Dưa leo bạn dùng dao gọt bỏ vỏ rồi rửa sạch và cắt thành lát xéo.

Ngò rí bạn ngắt bỏ phần gốc già, lá úa rồi bạn rửa sạch và cắt khúc khoảng 2cm.

Tỏi bạn bóc bỏ vỏ và ớt bạn rửa sạch để loại bỏ bụi bẩn.

Hành tây bạn bóc lớp vỏ bên ngoài rồi cắt lát mỏng vừa ăn, sau đó bạn ngâm hành tây vào một tô nước với 1 muỗng canh giấm gạo trong khoảng 5 phút rồi bạn vớt ra rổ để ráo nước.','','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bb993c3c-c22f-4118-b1b7-a711c715344c',2,N'Bạn cho tỏi và ớt vào cối rồi giã nhuyễn, sau đó bạn cho vào cối 3 muỗng canh đường, 2 muỗng canh bột ngọt, 1 muỗng canh hạt nêm, 1 muỗng canh tương ớt, 3 muỗng canh giấm gạo.

Bạn dùng muỗng khuấy đều để gia vị được hòa tan, rồi cho 100ml dầu ăn vào cối rồi khuấy đều một lần nữa.','','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('111d5754-151e-40ec-9b08-db144a027fdd',3,N'Bạn cho xà lách, dưa leo, cà chua, hành tây đã cắt lát vào một cái tô rồi trộn đều sau đó bạn cho nước sốt đã làm ở bước 2 vào, bạn đảo đều nhẹ tay một lần nữa cho đến khi nước sốt thấm vào rau củ quả.

Cuối cùng, bạn cho vào ngò rí đã cắt khúc vào rồi trộn đều là hoàn thành.','','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('adf4782a-7464-4df6-8101-b692762616ec',4,N'Salad trộn dầu giấm có màu sắc nhìn bắt mắt, cho bạn cảm giác tươi mát của các loại rau quả tươi với sự giòn sựt sựt của xà lách, dưa leo cùng với nước sốt chua ngọt cay cay thật đậm đà. Chắc chắn món ăn này gia đình bạn sẽ rất thích đấy!','','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('609cb69d-f92b-4c18-9033-9e467bbc6d7c','85a68c44-a67b-48f3-849f-8240eefe57a5','0e26d676-234a-4ab1-a5a0-f5f849bd3540',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9e0e240d-011f-4ca1-a350-bdad2018ee5e','85a68c44-a67b-48f3-849f-8240eefe57a5','770f3d34-b289-44eb-94fd-7b7bb598181d',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('011dbec3-b486-4974-8dab-bac71c3523e3','85a68c44-a67b-48f3-849f-8240eefe57a5','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9e30b2c6-284d-460a-a843-1d8234a2cbc9','85a68c44-a67b-48f3-849f-8240eefe57a5','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('586f584d-043c-45fc-a378-43f67e88f3f8','85a68c44-a67b-48f3-849f-8240eefe57a5','35141130-f290-471b-aeb8-20d3c0e529ae',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e2938e02-0718-4d56-8f05-0d04d5268ad5','85a68c44-a67b-48f3-849f-8240eefe57a5','d938f228-5967-4e19-b432-34cf16837fb4',20.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a9d3a3c8-0a62-4fa8-9ab9-3980b5e137d5','85a68c44-a67b-48f3-849f-8240eefe57a5','16c62599-983a-4fa3-a938-481bae209e6c',5.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('95c1e129-4687-4d77-8eb5-0a0f7903665b','85a68c44-a67b-48f3-849f-8240eefe57a5','e41475bc-ef90-4ac7-95d0-017c9da58216',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bab5e0c7-4570-4d1a-8df5-e40efb3ffd9e','85a68c44-a67b-48f3-849f-8240eefe57a5','bc4f0475-7cb3-4764-86ed-d1b0c2430810',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('91a7e698-74b5-4618-9f09-3960aabe5fde','85a68c44-a67b-48f3-849f-8240eefe57a5','e0ad7d77-7641-47a7-a927-65c0863525da',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2afcb7df-bb97-4c8e-8899-84d5d6d33fb8','85a68c44-a67b-48f3-849f-8240eefe57a5','88422078-2f9c-46e5-b938-427a8ba6960c',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d011d80f-b95e-4c08-bc4a-804e210ead42','85a68c44-a67b-48f3-849f-8240eefe57a5','0e26d676-234a-4ab1-a5a0-f5f849bd3540',20.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0c768ad0-6704-4df9-9d2a-ad3ee889674e','85a68c44-a67b-48f3-849f-8240eefe57a5','0e26d676-234a-4ab1-a5a0-f5f849bd3540',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('534be959-7a2a-47cc-8267-136a09c51423','85a68c44-a67b-48f3-849f-8240eefe57a5','66686732-2eff-404d-a9b5-a42a8f87375d',10.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('09e1a52b-d1e9-4e59-ac57-50ede3bab1ac','92df7117-d1fa-420a-9771-6d7f54fe5d33','85a68c44-a67b-48f3-849f-8240eefe57a5',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a7f05398-92a9-41aa-8abd-342829451653','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','85a68c44-a67b-48f3-849f-8240eefe57a5',420.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3fdd029e-d19f-4236-9101-f7b663090b92','71c34c3c-18da-4745-8b7d-4774800170ec','85a68c44-a67b-48f3-849f-8240eefe57a5',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f3d51f0b-1699-4931-ad02-01249a80a941','52c2699b-b628-4499-83d4-d478f7f9c902','85a68c44-a67b-48f3-849f-8240eefe57a5',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ba57322a-d866-4a06-a13f-10859a7b8207','6631457d-6680-4faa-aa2b-1e7e21d12bd4','85a68c44-a67b-48f3-849f-8240eefe57a5',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4bf114e9-7385-4720-9e94-1169e8aa4a11','73bba7e2-640f-48da-b681-64d79c2ae9e0','85a68c44-a67b-48f3-849f-8240eefe57a5',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7ac47c5c-34b9-4f67-a60d-30449db11749','998ed6be-f894-4d11-bde8-22e46900a926','85a68c44-a67b-48f3-849f-8240eefe57a5',25.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7bac2bfd-b284-4299-b7ed-86a798763160','1d67d321-d82e-415e-8297-b24427aa46ae','85a68c44-a67b-48f3-849f-8240eefe57a5',72.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('11c08e98-732e-4200-b0f7-76677e830d45','8239b53c-b2c4-480d-a8fa-2f4660c678be','85a68c44-a67b-48f3-849f-8240eefe57a5',688.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','85a68c44-a67b-48f3-849f-8240eefe57a5');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('fabcf2c0-b3eb-4b21-8113-88117a407428',N'salad dầu giấm bằng sốt dầu giấm',N'Trong công thức khoai tây và thịt bò xay tốt cho sức khỏe này, thịt bò xay và khoai tây được kết hợp với các loại rau nhiều màu sắc, bao gồm cải xoăn, cà chua và ớt.',40,2,'https://cdn.tgdd.vn/Files/2021/08/06/1373466/huong-dan-lam-mon-salad-dau-giam-thom-ngon-bo-duong-de-lam-tai-nha-202108061622477645.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('df1cf107-6100-441b-be1f-3be75390d096',1,N'Xà lách bạn rửa sạch cắt phần rễ rồi lặt lá hư, sâu sau đó tách từng lá rồi rửa qua với nước. Tiếp đến cho xà lách vào thau nước muối ngâm khoảng 15 phút. Sau 15 phút thì cắt thành miếng vừa ăn.','','fabcf2c0-b3eb-4b21-8113-88117a407428');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('708fb6d1-64de-4b64-ae48-4987e0cbb61a',2,N'Cà chua bi bạn thái lát. Hành tây lột bỏ vỏ, cắt thành từng khoanh.

Bắc nồi nước lên bếp, đợi nước sôi thì cho 3 quả trứng gà vào luộc chín rồi vớt ra, lột vỏ rồi cắt miếng vừa ăn.','','fabcf2c0-b3eb-4b21-8113-88117a407428');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cfa0d297-7630-497b-9b19-a163167244d9',3,N'Bạn cho vào tô xà lách đã cắt rồi rưới 3 muỗng canh dầu dấm vào trộn đều.','','fabcf2c0-b3eb-4b21-8113-88117a407428');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a355514b-ae8d-4e7f-b261-3a2930019418',4,N'Tiếp đến thêm hành tây, cà chua bi, trứng gà vào. Cuối cùng thêm sốt mayonnaise, mè trắng rang lên trên. Bạn trộn đều lên là có thể thưởng thức.','','fabcf2c0-b3eb-4b21-8113-88117a407428');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aa5801a9-388c-4005-a5f8-d401d0a3a9e6',5,N'Salad dầu giấm có nhiều màu sắc vô cùng bắt mắt chỉ muốn thử ngay thôi. Khi ăn thử bạn sẽ cảm nhận được xà lách giòn giòn kết hợp với nước sốt dầu giấm đậm vị. Nếu bạn đang tìm kiếm 1 món ăn vừa dễ làm vừa tốt cho sức khỏe thì thử ngay món salad này nhé!','','fabcf2c0-b3eb-4b21-8113-88117a407428');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ecd7fe3f-abc1-4fb4-b571-da1da1a477f3','fabcf2c0-b3eb-4b21-8113-88117a407428','1135f1d1-d822-4b2e-88ac-d73f1831b271',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f4713945-415c-4e48-bfd7-3d60682297f9','fabcf2c0-b3eb-4b21-8113-88117a407428','66561a95-67fb-42e9-bc12-89b0d915b46f',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e32a0353-e416-4b32-aaf0-1e9b7573f804','fabcf2c0-b3eb-4b21-8113-88117a407428','5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7901b327-2835-40ac-a054-be7c888752f4','fabcf2c0-b3eb-4b21-8113-88117a407428','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c3641551-d54a-4ac3-bc7a-da287d95b480','fabcf2c0-b3eb-4b21-8113-88117a407428','6eae1c7f-1f96-4f56-a7a0-05aaddb87661',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('93469d8b-3389-4108-9215-149037c319f5','fabcf2c0-b3eb-4b21-8113-88117a407428','692938d0-e603-4d02-b905-21b2a85d2ff5',20.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('925b55ed-2ce9-4d5d-9529-094ab2979b0b','fabcf2c0-b3eb-4b21-8113-88117a407428','e7a2b737-ce13-47ec-8c30-d31d575f1f5a',20.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b997ee83-c55d-4083-bb1a-8e5e89640e08','92df7117-d1fa-420a-9771-6d7f54fe5d33','fabcf2c0-b3eb-4b21-8113-88117a407428',230.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('db3237f0-8cdd-47b0-afcf-9fb948746334','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','fabcf2c0-b3eb-4b21-8113-88117a407428',322.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3281d7f0-aab5-446b-895a-70bb567c88ac','71c34c3c-18da-4745-8b7d-4774800170ec','fabcf2c0-b3eb-4b21-8113-88117a407428',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bcd3936b-3722-4e18-be00-c99b81aef2f7','52c2699b-b628-4499-83d4-d478f7f9c902','fabcf2c0-b3eb-4b21-8113-88117a407428',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('30b84b11-5968-42e9-8d83-f792feca1d2a','6631457d-6680-4faa-aa2b-1e7e21d12bd4','fabcf2c0-b3eb-4b21-8113-88117a407428',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1759f32e-cade-498d-9f11-0caa0e2efc22','73bba7e2-640f-48da-b681-64d79c2ae9e0','fabcf2c0-b3eb-4b21-8113-88117a407428',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('57ffccc8-df63-43f2-b255-8e0084d483be','998ed6be-f894-4d11-bde8-22e46900a926','fabcf2c0-b3eb-4b21-8113-88117a407428',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f5afff4a-4a47-425f-b338-4ba10dee788f','1d67d321-d82e-415e-8297-b24427aa46ae','fabcf2c0-b3eb-4b21-8113-88117a407428',49.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('837c75d5-44b1-4ca8-9b91-4b975a683d82','8239b53c-b2c4-480d-a8fa-2f4660c678be','fabcf2c0-b3eb-4b21-8113-88117a407428',400.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('18ce6030-7cf5-48cb-b6d2-ffe822666225','fabcf2c0-b3eb-4b21-8113-88117a407428');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('c8f130f5-2e98-45c2-98fc-81e8e7b1b291',N'món salad bò rau má',N'Trong công thức bữa tối dễ dàng này, cá hồi đóng hộp tiện lợi được biến thành những miếng chả cá hồi áp chảo thơm ngon được phục vụ cùng với salad dưa leo',30,2,'https://cdn.tgdd.vn/2022/04/CookDish/2-cach-lam-goi-rau-ma-cuc-ngon-an-mat-ruot-avt-1200x676.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c0689f97-2da5-4e1a-b5cc-ec3c10fe7fb3',1,N'Đầu tiên, bạn sẽ cắt chỉ 30g cà rốt, cắt sợi 1 trái ớt sừng và bỏ hạt, cắt hành tím thành từng khoanh nhỏ và cho vào 1 tô nước đá để giảm độ hăng của hành tím','','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('463a4e2b-9489-42d9-a00a-56f82444895b',2,N'/','','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0e9d97bd-f445-4831-9a8f-adfc5b6a0c2d',3,N'Trước hết, bạn sẽ tiến hành ướp 150g thịt bò thăn ngoại với 1 muỗng cà phê hạt nêm, 0.5 muỗng cà phê bột ngọt, 0.25 muỗng cà phê tiêu trắng, 1 muỗng canh dầu ăn, sau đó bạn sẽ trộn đều và ướp trong vòng 15 phút.','','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dd4d216f-77d5-4082-a80a-48fe178a8c3d',4,N'Sau khi đã ướp được 15 phút, bạn bắc một cái chảo lên bếp và cho vào một ít dầu ăn. Khi dầu đã nóng thì ta cho phần thịt bò vào chảo cùng với 3 - 4 tép tỏi để giúp dậy mùi thơm của thịt bò.

Khi áp chảo thịt bò thì bạn cần để lửa nhỏ đảm bảo cho miếng thịt chín vừa, chuyển thành màu đậm bên ngoài, có cháy xém một ít và bên trong vẫn còn mọng nước để thịt bò mềm và ngọt thịt.','','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('09d3ad38-ecb3-4da9-b1bd-4a08b05d2eae',5,N'Trước khi trộn salad thì bạn sẽ cắt thịt bò thành từng thớ mỏng vừa ăn và cắt thơm thành sợi nhỏ.

Tiếp đến, bạn cho vào 1 cái tô lớn 150g rau má non, 50g lá húng lủi, 30g cà rốt cắt chỉ, ớt sừng cắt sợi, hành tím cắt khoanh, thơm cắt sợi, nước sốt và trộn đều.

Sau đó, bạn cho ra dĩa phần salad đã trộn, tỏi phi, 3 - 4 tép tỏi đã áp chảo và xếp đều những lát thịt bò lên trên. Cuối cùng bạn cho xốt mayonnaise lên dĩa salad là xong.','','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a664b175-32d6-4acb-ad66-c95496f0f397',6,N'Dĩa salad bò rau má thơm ngon từ những lát thịt bò ngọt thịt, mọng nước, chín đều kết hợp với vị nhẫn nhẫn đặc trưng của rau má, mùi thơm của húng lủi và chút béo béo của xốt mayonnaise tạo nên một hương vị đậm đà, hấp dẫn và hỗ trợ thanh nhiệt cho cơ thể.','','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b2c96016-ebfc-4857-9b19-79c26bc7fd66',7,N'Món salad bò rau má nên thưởng thức ngay sau khi làm xong để cảm nhận được vị tươi mát của các loại rau và vị ngọt tự nhiên của thịt bò. Chị em có thể dùng món này như một bữa ăn chính để giúp giảm cân, thon dáng và vẫn đảm bảo cung cấp đầy đủ dinh dưỡng cho cơ thể.','','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('32334387-db56-40c2-a5d0-6fa5e33aaa1e','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','525d2b50-6015-4cb8-b162-c508e24f5e72',150.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a4b1ee10-27d1-41a6-9a5d-1312f73a5fa2','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','451a3553-507f-467b-bf94-56cf859c44c2',150.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('68afd0cc-5e49-4e0a-8797-7df5cb73452e','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','ee5b9471-b870-489c-a566-79cb827e91d5',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5a5a9464-a0e6-404e-943d-9b05739c78ad','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','169e7e6a-2518-47a5-b7bf-c6d76ef16079',30.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c00df9a6-2c6c-4162-b548-e8424111c76c','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','60d4c367-c639-4495-9e04-9de215473b7a',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e6949021-9736-442c-8e50-1ccfa0f19b32','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','9bd27c88-9962-4b0c-826a-0ade5d83050d',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3d449e2a-cd32-481a-9d06-848429d80132','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',20.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1cc2e864-256e-4bdd-a821-41a0e9f9500a','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','2e99d0a0-3bfd-4e3e-84cc-11d6470d0404',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f25e92f2-5c6d-4280-97ed-5d15ceca3a47','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f5bb4e9e-ff85-4de4-96bf-c4d22ef2145c','c8f130f5-2e98-45c2-98fc-81e8e7b1b291','ac80f30e-a58d-4ee1-a92a-76f94454551b',20.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0d9af800-bdd4-4b91-adff-49cb12f65f8d','92df7117-d1fa-420a-9771-6d7f54fe5d33','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',170.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f6d5c3af-8eaa-46fc-9af4-e67577df5284','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',255.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('08ac54a9-4d33-4714-9a09-c65e9b61ee3c','71c34c3c-18da-4745-8b7d-4774800170ec','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('927686ee-4e41-48f6-968d-20c82714448d','52c2699b-b628-4499-83d4-d478f7f9c902','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6b7d8e66-7bed-4955-8bb3-fb0c3925beed','6631457d-6680-4faa-aa2b-1e7e21d12bd4','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('93a64d7b-877e-468c-b072-d97c7ad7618d','73bba7e2-640f-48da-b681-64d79c2ae9e0','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('de5e5758-5535-4b48-80d0-7ca87eb48f75','998ed6be-f894-4d11-bde8-22e46900a926','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',22.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('76f1735f-9f8d-4992-bf8b-c4ab0577fe83','1d67d321-d82e-415e-8297-b24427aa46ae','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',110.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('54f993cf-6290-46b0-9531-f303ddbb5ca3','8239b53c-b2c4-480d-a8fa-2f4660c678be','c8f130f5-2e98-45c2-98fc-81e8e7b1b291',598.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','c8f130f5-2e98-45c2-98fc-81e8e7b1b291');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',N'Salad Hy Lạp',N'Salad Hy Lạp là một món ăn mang tính biểu tượng và đặc trưng của vùng Địa Trung Hải, hiện đã dần trở nên thân thuộc trong ẩm thực Việt bởi giá trị dinh dưỡng của nó.',20,1,'https://cdn.tgdd.vn/Files/2022/05/16/1432739/bat-mi-cach-lam-salad-hy-lap-don-gian-gion-mat-cuc-bo-duong-202205160921499182.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('abaf4612-578c-4d24-a285-7e3213917e0f',1,N'Cà chua bạn rửa sạch rồi cắt đôi. Xà lách romaine rửa sạch, cắt khúc. Oliu đen Crespo bạn rửa sạch, để ráo rồi cắt đôi.
Ớt chuông bạn mang đi rửa sạch, cắt lát hoặc miếng vuông. Dưa leo bạn rửa sạch, sau đó cắt thành những khối nhỏ hình tam giác vừa ăn, dày khoảng 0.5mm.
Hành tây bạn bóc lớp vỏ bên ngoài rồi cắt thành những lát mỏng. Sau đó cho vào một chén nước đã pha 1 muỗng canh giấm ăn ngâm trong 10 phút để loại bỏ vị hăng. Với phô mai trắng Apetina, bạn hãy lấy phô mai ra và để ráo nước.','','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('894dfbb4-f6f1-4857-86e3-04a56c07d43d',2,N'Bạn cho vào chén nhỏ 1 muỗng nước ngâm phô mai Apetina, 4 muỗng canh dầu olive, 1 muỗng giấm ăn, ½ muỗng cà phê tiêu và khuấy đều.','','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2ef72a88-ed97-46b3-a698-ddeef2ab470b',3,N'Cho toàn bộ phần rau củ đã chuẩn bị gồm xà lách, cà chua, dưa leo, ớt chuông, hành tây và quả oliu vào một chiếc tô to.

Rưới nước trộn salad lên rau củ và trộn đều khoảng 1 phút. Sau đó thêm 50gr phô mai vuông Apetina và một muỗng sữa chua Hy Lạp Tamar Valley lên trên, tiếp tục trộn đều và thưởng thức.','','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4494ed34-4798-4fe0-b6ce-dd01382f4818',4,N'Salad Hy Lạp có màu sắc bắt mắt, mang lại cho bạn cảm giác tươi mát của các loại rau quả tươi với sự giòn, ngọt và tươi ngon của dưa leo, quả olive cùng vị chua chua, mằn mặn từ phô mai Apetina và sữa chua Hy Lạp. Chắc chắn khi thưởng thức món ăn này, gia đình sẽ rất thích đấy!','','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8f2c5180-6590-4541-9883-00f767163820',5,N'Rắc cá hồi và thêm vào chảo, mặt da hướng lên trên. Nấu, lật một lần, cho đến khi nó có màu nâu và bong ra bằng nĩa, tổng thời gian từ 6 đến 7 phút.','','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7f4c4033-7555-4ab2-a10a-429110b41222',6,N'Xếp cá hồi lên trên đậu Hà Lan. Thêm bơ và cỏ xạ hương vào chảo. Nấu, khuấy, cho đến khi bơ có màu nâu và thơm, khoảng 30 giây. Ăn kèm với chanh, nếu muốn.','','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('32f4d416-a44d-4d40-8223-7d302467e524','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','3c4ae0b0-c528-45c5-97a9-23a3ba5173ed',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('19ae2383-8b0b-4971-93c9-f58bb2f29651','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b1ef552e-3741-44d2-a38c-6da316d32151','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','fb77748e-9fe5-42d0-82bf-6a591ce82823',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('60f61cfe-6d97-4dbb-b07a-066a456da171','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','0ba95ab8-d414-4df2-9775-8f51873cd3e5',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('46db44cb-dc9c-4681-910b-4e3d7858fd22','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','55ee1a92-e916-4f7c-9d57-f64f8d274da7',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9cf78fb6-1cfe-46f3-90fa-72119d7699c5','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','4ce6c9e7-38df-48cc-b1cf-ee19a1816867',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f54e7787-c7f9-4485-a942-3562edb7aebd','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','6ea0a3d4-025f-421f-a734-2c5df64ab723',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9ccf3cfc-b978-44b1-89a9-790918cdff37','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','3780394f-0315-4b94-84ac-bd75aece697d',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('27a2fee2-e249-4757-8ee2-b9b857f96004','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','1135f1d1-d822-4b2e-88ac-d73f1831b271',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('90ccb7b7-5c41-435c-835b-a6519e022fbe','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','60d4c367-c639-4495-9e04-9de215473b7a',40.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ab158eba-5f0d-4532-9f58-ca656d2dddaf','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','cd5349f9-bf34-4ef5-9032-a64fb7a0cd7d',20.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fa841ad9-843d-4c07-8cb7-6e0b21c6fe17','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','6d8adcbd-aff6-4f6d-9598-7d55e37fd42e',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('468076db-8d11-4d30-a9ca-0164c621f89b','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55','2d679e49-a61a-4801-b500-2d438b441231',5.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9b672d20-2b2e-497a-a63d-92d4d7651e10','92df7117-d1fa-420a-9771-6d7f54fe5d33','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',280.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ea1a7222-c18a-44e7-8b74-db42c3022b7e','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',370.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6b564a22-2575-4b95-bc7a-36a840c86e9c','71c34c3c-18da-4745-8b7d-4774800170ec','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',18.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8b736993-2d87-49bc-aa0b-81e75fe657bb','52c2699b-b628-4499-83d4-d478f7f9c902','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('beac239e-9a03-4488-af98-0e8ea2a81401','6631457d-6680-4faa-aa2b-1e7e21d12bd4','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0457927a-6f21-4c0f-906d-4cb66ae40cd0','73bba7e2-640f-48da-b681-64d79c2ae9e0','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9d3f05cf-8cd5-4d0b-a24b-ed94719f3dba','998ed6be-f894-4d11-bde8-22e46900a926','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('df0a50fc-3134-4d6a-bf04-b85cd8d9c46c','1d67d321-d82e-415e-8297-b24427aa46ae','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',86.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b42ced00-2f6a-406f-b6d6-d4f68f64df89','8239b53c-b2c4-480d-a8fa-2f4660c678be','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55',669.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('18ce6030-7cf5-48cb-b6d2-ffe822666225','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','4f8b7f0f-8d44-445d-9c93-9a52bcce6d55');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('b59690fd-8983-4ca2-81df-acc901f90e47',N'Salad Louie cua - phục vụ cho 4 người',N'Món salad Bờ Tây cổ điển này được làm từ Cua Dungeness đánh bắt ở vùng biển ven bờ',45,2,'https://cdn.tgdd.vn/2021/10/CookDish/cach-lam-salad-uc-ga-sot-me-rang-chua-chua-ngot-ngot-cuc-ngon-avt-1200x676-1.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e75be241-b1b8-4aad-810e-b78ce6752932',1,N'Để chuẩn bị sốt: Đánh đều tương cà, sốt mayonnaise, hành vàng, tỏi, gia vị, thì là, cải ngựa và nước cốt chanh trong một bát vừa.','','b59690fd-8983-4ca2-81df-acc901f90e47');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('300adbc6-56dc-49d5-b109-7ef4258967f3',2,N'Để chuẩn bị món salad: Đun sôi 1 inch nước trong nồi lớn có lắp giỏ hấp. Đặt một bát nước đá gần bếp.','','b59690fd-8983-4ca2-81df-acc901f90e47');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dc997fef-9646-4df5-9eee-33e53746c8d6',3,N'Thêm măng tây vào nồi, đậy nắp và hấp cho đến khi mềm-giòn, từ 3 đến 5 phút. Chuyển sang bồn nước đá. Để ráo nước và lau khô. Đặt xà lách lên đĩa phục vụ.','','b59690fd-8983-4ca2-81df-acc901f90e47');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d1aeb4cd-0c1e-4dfe-89ce-027fa3e82495',4,N'Xếp măng tây, cà chua, trứng, cần tây, bơ, dưa chuột, hành lá, ô liu và hành tím lên trên','','b59690fd-8983-4ca2-81df-acc901f90e47');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d6c507ea-6ba3-444d-a93e-658dcfd2cb03',5,N'Cho thịt cua lên trên và đổ một nửa nước sốt lên trên (để dành phần nước sốt còn lại cho lần sử dụng khác). Ăn kèm với chanh, nếu muốn.','','b59690fd-8983-4ca2-81df-acc901f90e47');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c315ee77-5b82-44dd-97b7-0447c667c017','b59690fd-8983-4ca2-81df-acc901f90e47','ab3d8983-9055-48c3-811f-2ffa5bc98c67',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ca942e71-0b6d-4c83-81fe-c3879e9b2975','b59690fd-8983-4ca2-81df-acc901f90e47','692938d0-e603-4d02-b905-21b2a85d2ff5',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('99a228c1-2840-48f8-8696-14b02ba53fc7','b59690fd-8983-4ca2-81df-acc901f90e47','a3fe9955-6f41-4d1b-8387-80a92380dfa5',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5179cc74-294e-4c4a-9236-26f6dec81f26','b59690fd-8983-4ca2-81df-acc901f90e47','3fea7dea-cad2-49f4-b553-b620713b535b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('93d24d09-c81a-4f58-a3cc-6b7f364d353f','b59690fd-8983-4ca2-81df-acc901f90e47','8a3a342d-d5bc-4e7c-a66c-e931bb355c14',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d812d0c4-e478-4db6-90ed-8c86a59f04c6','b59690fd-8983-4ca2-81df-acc901f90e47','e57d978b-1cb9-449f-b88b-d2f3093033e8',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('392f14e0-6529-4341-979c-1373f735fb78','b59690fd-8983-4ca2-81df-acc901f90e47','c794f275-088c-4512-8ffe-1f42f02f09e1',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('516ee88b-2d35-4f3b-93ab-cc3db2fc0cd4','b59690fd-8983-4ca2-81df-acc901f90e47','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6a508185-5e60-46a6-8ac8-e648921419df','b59690fd-8983-4ca2-81df-acc901f90e47','87320dac-337e-4dc6-8a91-0567bf2328a2',8.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0a8237af-7c03-4de4-9aab-921cbfaee3f4','b59690fd-8983-4ca2-81df-acc901f90e47','48c07b8a-5d75-4921-8d92-8460cc21b360',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6faf4738-0e9d-48a2-86fa-82cf75cfd9a9','b59690fd-8983-4ca2-81df-acc901f90e47','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b17df8cf-b7e0-4329-9145-d051c6956fd1','b59690fd-8983-4ca2-81df-acc901f90e47','d2985015-ad21-4c3a-8f22-608be39f47c0',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1f86f111-8068-463d-8887-c92ad242bd9e','b59690fd-8983-4ca2-81df-acc901f90e47','d4e39161-0266-4245-a9fd-0771ec1d9870',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('35dc17db-06cf-4d7e-a43a-7bc0621917ab','b59690fd-8983-4ca2-81df-acc901f90e47','b4e0104f-e719-4e89-93f1-7a6d6992d368',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f55f3a44-9dc9-495d-aeb4-7ecb8e5fec7b','b59690fd-8983-4ca2-81df-acc901f90e47','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('65a64c7d-b473-4eb8-9f9b-e3e1aec3cf11','b59690fd-8983-4ca2-81df-acc901f90e47','cf33f2ff-8d3f-4c10-bd72-5d6fb17cf900',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('46f5a9b5-508d-443c-95fb-896a042c1856','b59690fd-8983-4ca2-81df-acc901f90e47','4ce6c9e7-38df-48cc-b1cf-ee19a1816867',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8559f86a-d09c-41b4-a784-2811528c0af9','b59690fd-8983-4ca2-81df-acc901f90e47','a3fe9955-6f41-4d1b-8387-80a92380dfa5',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7d6816b1-6d43-43a7-9c7e-0482baaedb04','b59690fd-8983-4ca2-81df-acc901f90e47','af4d3416-868e-48c2-b052-5774862d206c',6.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f43aa06e-bf86-4370-aea1-e3efa74e0d1a','92df7117-d1fa-420a-9771-6d7f54fe5d33','b59690fd-8983-4ca2-81df-acc901f90e47',1360.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5f9d6f0c-233b-4ab3-9600-6032be2ef690','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','b59690fd-8983-4ca2-81df-acc901f90e47',325.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('169de79f-d565-4bb9-a392-6307ddeccdb3','71c34c3c-18da-4745-8b7d-4774800170ec','b59690fd-8983-4ca2-81df-acc901f90e47',23.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('933104c2-828b-4344-aa6b-467dd6fb94dc','52c2699b-b628-4499-83d4-d478f7f9c902','b59690fd-8983-4ca2-81df-acc901f90e47',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6ec455b6-04a1-450a-bc74-337448dca82b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','b59690fd-8983-4ca2-81df-acc901f90e47',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0641b7ea-b9da-4413-ad52-dd21a984ebc9','73bba7e2-640f-48da-b681-64d79c2ae9e0','b59690fd-8983-4ca2-81df-acc901f90e47',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('84377da2-0fc6-4a47-a73f-8257f9ea30e1','998ed6be-f894-4d11-bde8-22e46900a926','b59690fd-8983-4ca2-81df-acc901f90e47',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6eaf1976-1856-43cb-9d87-4916b684a96f','1d67d321-d82e-415e-8297-b24427aa46ae','b59690fd-8983-4ca2-81df-acc901f90e47',140.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8de08375-ceaf-4f23-8785-3e7849a2bebd','8239b53c-b2c4-480d-a8fa-2f4660c678be','b59690fd-8983-4ca2-81df-acc901f90e47',603.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','b59690fd-8983-4ca2-81df-acc901f90e47');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','b59690fd-8983-4ca2-81df-acc901f90e47');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('776cc389-3ab9-4e26-9a36-7a9b782b37b9',N'Salad Nacho gà và bơ - phục vụ cho 4 người',N'Bữa tối không gì dễ dàng hơn món salad năm thành phần này',15,1,'https://cdn.tgdd.vn/2020/08/CookProduct/avocado-finale-1200x676.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7bf941da-a8b8-44bd-94c9-b617898800ec',1,N'Kết hợp 0.5 bát pico de gallo và dầu trong một bộ xử lý thực phẩm nhỏ; xử lý cho đến khi mịn.','','776cc389-3ab9-4e26-9a36-7a9b782b37b9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('48c47065-c935-49fa-a353-588f8ac8e256',2,N'Trải đều xà lách trên một đĩa lớn; phủ lên thịt gà với bơ.','','776cc389-3ab9-4e26-9a36-7a9b782b37b9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5610bec0-0f7a-445d-8798-c4f5b1fa220a',3,N'Rưới đều pico de gallo đã trộn và phần còn lại.','','776cc389-3ab9-4e26-9a36-7a9b782b37b9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('82c87bf0-d70e-4ceb-a20d-25e04c627542',4,N'Rắc bánh tortilla và hạt tiêu để hoàn thành món ăn','','776cc389-3ab9-4e26-9a36-7a9b782b37b9');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e89dd29e-b3f9-436f-bbac-39dde4fa44ea','776cc389-3ab9-4e26-9a36-7a9b782b37b9','60d4c367-c639-4495-9e04-9de215473b7a',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bf195d42-8842-4e55-8964-990ef2d4cc68','776cc389-3ab9-4e26-9a36-7a9b782b37b9','1135f1d1-d822-4b2e-88ac-d73f1831b271',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('248f3d79-5188-43be-a9b3-0f9acc9cd1bd','776cc389-3ab9-4e26-9a36-7a9b782b37b9','23a5a8c3-aa75-419a-a78a-cadd93eac7e8',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('931e3ea4-6678-4ce9-a3b4-5ef0f2eccf3c','776cc389-3ab9-4e26-9a36-7a9b782b37b9','b4e0104f-e719-4e89-93f1-7a6d6992d368',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('23edfe33-ddf1-4f89-a3aa-a0bcbab3843b','776cc389-3ab9-4e26-9a36-7a9b782b37b9','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('098211d7-7250-4d94-a614-7d3d17e49bbb','776cc389-3ab9-4e26-9a36-7a9b782b37b9','a71ef499-05f5-41a5-b74a-3be902a2bb24',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('65640a42-c80c-4c4d-a9b7-f45aecf906a0','776cc389-3ab9-4e26-9a36-7a9b782b37b9','8cad0044-c3f8-4e38-9396-4bf933ef2179',60.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('59cb1ad5-5ecf-4a29-89a1-eeb24f5f91d2','92df7117-d1fa-420a-9771-6d7f54fe5d33','776cc389-3ab9-4e26-9a36-7a9b782b37b9',1724.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('61e8dc90-9703-4ff3-8f22-480ca9731139','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','776cc389-3ab9-4e26-9a36-7a9b782b37b9',412.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('af2bd913-5456-4be5-bcaf-546937e1ad43','71c34c3c-18da-4745-8b7d-4774800170ec','776cc389-3ab9-4e26-9a36-7a9b782b37b9',26.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a7fa9568-4363-4295-9f02-c480fd515d17','52c2699b-b628-4499-83d4-d478f7f9c902','776cc389-3ab9-4e26-9a36-7a9b782b37b9',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a9583dad-58d3-4569-bb06-ee0cbf7f3fa6','6631457d-6680-4faa-aa2b-1e7e21d12bd4','776cc389-3ab9-4e26-9a36-7a9b782b37b9',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('38707d2d-5d78-4e7f-b1f4-7bdfb1a22e36','73bba7e2-640f-48da-b681-64d79c2ae9e0','776cc389-3ab9-4e26-9a36-7a9b782b37b9',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b5f04112-c67c-433a-a0c9-5a2eeded2fe9','998ed6be-f894-4d11-bde8-22e46900a926','776cc389-3ab9-4e26-9a36-7a9b782b37b9',26.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d5f42e1d-1944-4f58-8e93-5ae222d35902','1d67d321-d82e-415e-8297-b24427aa46ae','776cc389-3ab9-4e26-9a36-7a9b782b37b9',66.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7bb563c0-116d-4b2a-af28-4f2107b437bc','8239b53c-b2c4-480d-a8fa-2f4660c678be','776cc389-3ab9-4e26-9a36-7a9b782b37b9',547.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','776cc389-3ab9-4e26-9a36-7a9b782b37b9');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','776cc389-3ab9-4e26-9a36-7a9b782b37b9');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('5e71347d-0c53-4ee2-aada-5b1ad419118b',N'Salad dưa chuột - phục vụ cho 4 người',N'Món salad này là sự cân bằng hoàn hảo giữa hượng ngọt và chua, cùng với một chút thì là tươi, hành tím giòn ngon.',15,1,'https://cdn.tgdd.vn/2021/10/CookRecipe/Avatar/salad-xa-lach-dua-chuot-ca-chua-thumbnail.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('49de2f9a-0ad0-4425-86ff-f177ff838a75',1,N'Dùng dao thái mỏng dưa chuột dày 0.25 inch. Chuyển các lát dưa chuột sang lưới lọc mịn đặt trong một cái bát lớn; rắc đường và muối.','','5e71347d-0c53-4ee2-aada-5b1ad419118b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('69365ed6-4db1-4177-a46c-b9c091c566d2',2,N'Để yên ở nhiệt độ phòng trong 30 phút. Loại bỏ bất kỳ chất lỏng nào trong bát và làm khô bát.','','5e71347d-0c53-4ee2-aada-5b1ad419118b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('900c3d84-f59c-4c0e-a2c1-6e2b8448b25c',3,N'Chuyển dưa chuột vào một cái bát và trộn với hành tây, giấm, thì là và hạt tiêu.','','5e71347d-0c53-4ee2-aada-5b1ad419118b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4d8f1283-1e26-4c93-85a6-6b74da715da6',4,N'Để yên ở nhiệt độ phòng trong 15 phút.','','5e71347d-0c53-4ee2-aada-5b1ad419118b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5ff6abb2-e4f2-4049-b45c-79b36c33d645',5,N'Phục vụ ngay lập tức hoặc làm lạnh trong tối đa 3 ngày.','','5e71347d-0c53-4ee2-aada-5b1ad419118b');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6f6ee77d-7174-44c2-a50c-d6df232dd59f','5e71347d-0c53-4ee2-aada-5b1ad419118b','1c1b2bfe-6273-4087-8e4f-355cd27774e2',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0ebf07d4-dbb4-4181-bf15-c1fbc17462c0','5e71347d-0c53-4ee2-aada-5b1ad419118b','b856cf83-246e-463c-813d-8788e8e2f4e1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d70f4357-1a77-4c53-b43f-ece48d6bafd7','5e71347d-0c53-4ee2-aada-5b1ad419118b','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e13a9cdc-bb04-45a3-9bf2-7b8f734c63bb','5e71347d-0c53-4ee2-aada-5b1ad419118b','d1ad0935-0fe1-4d09-82b5-ea94b6673b66',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b1ede765-3e1b-4a0e-84d5-f686dd0e3405','5e71347d-0c53-4ee2-aada-5b1ad419118b','8bc2ef55-001a-4e2f-8e60-854c255ceb2a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('131e1b09-aa2f-4ec5-8da0-ce3c603ce425','5e71347d-0c53-4ee2-aada-5b1ad419118b','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3959f2c3-4fe4-47ee-a81b-81f25a1bee4e','5e71347d-0c53-4ee2-aada-5b1ad419118b','1480cf04-7737-477e-ab53-fb7706420995',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2bff3fa0-1b5b-47eb-bf80-608d96ea79e8','92df7117-d1fa-420a-9771-6d7f54fe5d33','5e71347d-0c53-4ee2-aada-5b1ad419118b',138.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1730e4f4-aadd-4427-92e3-21e776c480a7','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','5e71347d-0c53-4ee2-aada-5b1ad419118b',33.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8ffe82e8-cd5e-45d6-bc07-c588ccb08548','71c34c3c-18da-4745-8b7d-4774800170ec','5e71347d-0c53-4ee2-aada-5b1ad419118b',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0ac6bbcf-bccd-4d27-aaa7-5f6aa80545e3','52c2699b-b628-4499-83d4-d478f7f9c902','5e71347d-0c53-4ee2-aada-5b1ad419118b',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d1afb6c5-ae5e-410a-b5e9-ec93d6c238f4','6631457d-6680-4faa-aa2b-1e7e21d12bd4','5e71347d-0c53-4ee2-aada-5b1ad419118b',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0eb3ff12-7821-4ab0-a63d-5b96fb04a473','73bba7e2-640f-48da-b681-64d79c2ae9e0','5e71347d-0c53-4ee2-aada-5b1ad419118b',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('56e72782-573e-46a9-93e4-682492802957','998ed6be-f894-4d11-bde8-22e46900a926','5e71347d-0c53-4ee2-aada-5b1ad419118b',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1cefed4d-ca94-4ce9-bd49-3577896cb235','1d67d321-d82e-415e-8297-b24427aa46ae','5e71347d-0c53-4ee2-aada-5b1ad419118b',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ea6d1bf9-4029-4383-bbe6-588145130fa4','8239b53c-b2c4-480d-a8fa-2f4660c678be','5e71347d-0c53-4ee2-aada-5b1ad419118b',292.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','5e71347d-0c53-4ee2-aada-5b1ad419118b');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','5e71347d-0c53-4ee2-aada-5b1ad419118b');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('3d4b7649-a4be-438a-862a-e739816fdf37',N'Salad lá trà - phục vụ 6 người',N'Phiên bản salad lá trà này, sử dụng trà xanh sẵn có, cung cấp một sự thay thế nhanh chóng.',30,1,'https://bizweb.dktcdn.net/100/025/663/files/lahpet-thoke-6-min.jpg?v=1657269000128');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('989b6404-2544-486e-91e6-065d22d6ac91',1,N'Chuẩn bị: Ngâm lá trà trong nước nóng trong 3 phút. Để ráo và ép nước thừa ra khỏi lá trà (bạn có thể uống trà). Để nguội đến nhiệt độ phòng.','','3d4b7649-a4be-438a-862a-e739816fdf37');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a89d0dd9-736d-465d-9dc2-218bb89704b5',2,N'Kết hợp lá trà, tỏi tươi và muối trong một bộ xử lý thực phẩm nhỏ; xung để kết hợp. Khi động cơ đang chạy, nhỏ vào 3 muỗng canh dầu và giấm.','','3d4b7649-a4be-438a-862a-e739816fdf37');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cc9b0f24-996b-4d93-8844-fe385d53c6c1',3,N'Để trộn salad: Xếp bắp cải thành một lớp trên đĩa tròn có viền hoặc trong một cái bát nông. Thìa băng vào trung tâm.','','3d4b7649-a4be-438a-862a-e739816fdf37');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('66c06550-284a-4695-a712-4ee319c4082d',4,N'Sắp xếp chồng cà chua,serrano, tỏi chiên, đậu phộng và đậu Hà Lan tách xung quanh nước sốt.','','3d4b7649-a4be-438a-862a-e739816fdf37');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dcc7ad16-84b5-48ca-9198-93ee3dacece1',5,N'Rưới dầu ăn, nước cốt chanh và nước mắm lên trên, rắc hành ngò, bột tôm (nếu dùng) và ớt đỏ giã nhỏ. Trộn bàn với 2 dĩa.','','3d4b7649-a4be-438a-862a-e739816fdf37');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fdeb6416-eea3-43c9-9e03-96d5db55febe','3d4b7649-a4be-438a-862a-e739816fdf37','fdf663ca-8e17-4586-a9aa-d60073a63fe1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('379d02c4-d33f-4310-8516-fc6d377a5233','3d4b7649-a4be-438a-862a-e739816fdf37','608be072-fa03-4488-aa38-1253d34c6370',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1792e3e3-bd38-416c-9982-3cead9a30217','3d4b7649-a4be-438a-862a-e739816fdf37','3fea7dea-cad2-49f4-b553-b620713b535b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('90f2cdea-5294-4bf6-b82a-e26e0eca228e','3d4b7649-a4be-438a-862a-e739816fdf37','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0408db91-954a-4ef4-9426-c5ef4ac4dae1','3d4b7649-a4be-438a-862a-e739816fdf37','2e99d0a0-3bfd-4e3e-84cc-11d6470d0404',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cb6067e8-0a04-45b5-b1f2-8ccbd5844bce','3d4b7649-a4be-438a-862a-e739816fdf37','a40c4d27-99c2-4cec-abb7-c002ad91c4b6',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a2bbed73-0d46-40dc-a442-b943ad3c14b0','3d4b7649-a4be-438a-862a-e739816fdf37','bd0e8933-e850-4397-8097-2630f16ff89d',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0aac22e4-d382-437a-a1a1-9082cd6727f5','3d4b7649-a4be-438a-862a-e739816fdf37','5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fc7b1883-f98f-4dd3-a502-0a7552ed59f1','3d4b7649-a4be-438a-862a-e739816fdf37','cdbbe1df-2646-4719-ba89-f71e7a69a9be',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7bcd9102-c36d-43b6-bbae-537fb746ca35','3d4b7649-a4be-438a-862a-e739816fdf37','d8ceaa7b-5434-48a4-bcde-9abc83292f90',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1d47e5ed-e5f8-4fb2-b3df-997b6a1fe645','3d4b7649-a4be-438a-862a-e739816fdf37','e8e57a25-7d91-441b-b593-c0a263de2b02',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('20194b27-7226-4436-bf1b-36da0fd5f8c8','3d4b7649-a4be-438a-862a-e739816fdf37','9e2a3d68-b3cd-4821-bc41-bb5b367f98d5',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0a6c8f49-9666-4446-ad01-7c573e90f7e5','3d4b7649-a4be-438a-862a-e739816fdf37','2e99d0a0-3bfd-4e3e-84cc-11d6470d0404',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4bc83eb7-cd29-4104-8055-358ed0a86dfb','3d4b7649-a4be-438a-862a-e739816fdf37','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6f2f3136-4593-4fbf-b9f6-c9c6b6f4288f','3d4b7649-a4be-438a-862a-e739816fdf37','3371e1dc-901d-492f-be54-2c475e3b899a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d958535c-9dc4-4d49-8d6a-9771a94f18d1','3d4b7649-a4be-438a-862a-e739816fdf37','3c5883ae-22da-43b6-8961-56795425ac0c',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d491401c-6f38-4d59-a7b9-6a171337628d','92df7117-d1fa-420a-9771-6d7f54fe5d33','3d4b7649-a4be-438a-862a-e739816fdf37',753.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c914216e-c696-4418-b1aa-a31b80da8a6a','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','3d4b7649-a4be-438a-862a-e739816fdf37',180.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dcae5c6e-0375-4990-ae24-8bb51234913b','71c34c3c-18da-4745-8b7d-4774800170ec','3d4b7649-a4be-438a-862a-e739816fdf37',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2bc65cc6-3b3d-495f-ab43-e4376b7e8556','52c2699b-b628-4499-83d4-d478f7f9c902','3d4b7649-a4be-438a-862a-e739816fdf37',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7a7ef909-9f31-41c2-9483-31f2db65e5f1','6631457d-6680-4faa-aa2b-1e7e21d12bd4','3d4b7649-a4be-438a-862a-e739816fdf37',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9f24b4c4-05f5-4c0f-a28d-b408acea15bd','73bba7e2-640f-48da-b681-64d79c2ae9e0','3d4b7649-a4be-438a-862a-e739816fdf37',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('aa76c688-e1ca-418b-ad71-22b32fee52ee','998ed6be-f894-4d11-bde8-22e46900a926','3d4b7649-a4be-438a-862a-e739816fdf37',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('199dece6-93e9-4195-b4e8-83622ccf8aaf','1d67d321-d82e-415e-8297-b24427aa46ae','3d4b7649-a4be-438a-862a-e739816fdf37',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('82f33e9d-c595-40ad-a8f6-07011b03d057','8239b53c-b2c4-480d-a8fa-2f4660c678be','3d4b7649-a4be-438a-862a-e739816fdf37',341.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','3d4b7649-a4be-438a-862a-e739816fdf37');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','3d4b7649-a4be-438a-862a-e739816fdf37');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',N'Salad đậu xanh và rau củ - phục vụ cho 4 người',N'Món ăn chỉ cần có một ít ngũ cốc nguyên hạt đã nấu chín, một số gia vị có hương vị đậm đà, một ít rau giòn bạn đã hoàn thiện món ăn này',25,1,'https://cdn.tgdd.vn/2021/11/CookRecipe/Avatar/salad-dau-ha-lan-pho-mai-thit-xong-khoi-thumbnail.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7fa577b0-e31f-4b31-8a01-aef592eeb134',1,N'Cho cà rốt và củ cải vào tô.','','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c75671b9-0613-4ae2-8953-0dcdb0d8268f',2,N'Kết hợp giấm và đường trong một cái chảo nhỏ.','','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aac7a3f6-4523-40c5-8c6e-587d0c6fbf33',3,N'Đun sôi hỗn hợp giấm trên lửa vừa và đổ lên cà rốt và củ cải. Để yên 10 phút.','','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bc5945b0-605d-44bf-aa8e-fbdb9f52e6b6',4,N'Chia rau xanh, farro, đậu xanh và 0.5 chén rau mùi vào 4 đĩa. Để ráo cà rốt và củ cải; phân chia giữa các tấm.','','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a6152369-b7f0-4c79-9ac7-b8b0b6751cf8',5,N'Cắt nhỏ 1 muỗng canh rau mùi còn lại. Cho dầu, nước cốt chanh, tỏi, mật ong và rau mùi xắt nhỏ vào một cái bát nhỏ; đánh trứng để kết hợp.','','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a69a1a22-9531-4b2e-ba26-46cab253b68c',6,N'Rưới đều lên món salad.','','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0bde71d1-5310-4ae2-a900-533e54bd5c5d',7,N'Rắc đều xà lách với quả hồ trăn nướng và dùng ngay.','','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7f814a9c-0aa8-4666-a469-39b99e0970be','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','564bdb70-2080-4bf0-80c7-45b93da1214e',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cdf4e0da-fb4d-45d6-9c41-6e3c58900f9a','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','9941fe19-0a70-4907-b240-ab1c07f12e0f',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('283c6ffa-8daf-48c8-a2be-9d59aae17ac1','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','cd5349f9-bf34-4ef5-9032-a64fb7a0cd7d',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('920e9234-af38-4019-abf4-127a28456a7f','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','b856cf83-246e-463c-813d-8788e8e2f4e1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('54ad9e5f-c86e-44fc-b979-8995825fdcd3','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','1135f1d1-d822-4b2e-88ac-d73f1831b271',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e67adc31-b9cf-4929-8130-de88709de1d6','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','7949021a-2982-4820-bfb1-268f6a64dacf',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e2f57402-5d63-47a2-a1dc-5db2503f42f8','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','25e8ca30-60af-4281-b32a-48e2f3418680',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('242973af-b931-4e2f-9cf1-45ac94b42207','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','22a84949-04f7-408f-b5ff-3df76dd0adac',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eb0b124b-fbb9-4edc-81ec-92e2b405ce92','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','60d4c367-c639-4495-9e04-9de215473b7a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b0e4f52f-0c78-4c70-ae2b-b2a28f8cc123','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('781f2553-3ed1-4d9f-859e-9b4ce39d9836','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','3fea7dea-cad2-49f4-b553-b620713b535b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7e4ad154-214f-4e1b-be90-7fcaf73983df','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','5910feab-2f62-4229-bb39-29e3aa451a96',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c03a2bc9-c890-4b3d-b893-07f15f2bb2c7','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd','44c756f6-d376-49b0-ae34-60cba7cbe17a',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4afd9849-81cd-4fb3-bd9d-4d65e88ac8e3','92df7117-d1fa-420a-9771-6d7f54fe5d33','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',1054.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9be746b8-72a8-4613-9d0c-b8fb7042f121','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',252.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7651c254-ef55-4206-be8d-386001df7dbf','71c34c3c-18da-4745-8b7d-4774800170ec','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e5f7e62b-491d-4dca-bee8-2279417e7af3','52c2699b-b628-4499-83d4-d478f7f9c902','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('99f8a672-4ece-4b7f-a305-51c3e9ef6264','6631457d-6680-4faa-aa2b-1e7e21d12bd4','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8714d914-b917-4530-9b08-a28d362eccd5','73bba7e2-640f-48da-b681-64d79c2ae9e0','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b2a089d0-8b3e-4b2b-ae26-34b155a8fc46','998ed6be-f894-4d11-bde8-22e46900a926','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4b5d8cb6-ea5c-4160-8a02-eee3cb1b96d3','1d67d321-d82e-415e-8297-b24427aa46ae','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5a08a814-79b1-4f59-9537-796a792f2d19','8239b53c-b2c4-480d-a8fa-2f4660c678be','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd',94.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','6bfe9cbb-0b69-4250-8ba0-78f1c9a2b5cd');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('50d02b55-7410-413a-bdde-bcae81a45767',N'Salad Gà Kem với rau xanh - phục vụ cho 4 người',N'Để có một biến thể lành mành cho món salad gà sốt kem, chúng tôi đã thay thế nữa sốt mayonnaise bằng sốt húng quế.',30,2,'https://cdn.tgdd.vn/2021/11/CookRecipe/Avatar/salad-ga-ap-chao-thumbnail.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0286ae01-6318-4881-93c7-62916af0918d',1,N'Cho gà vào nồi vừa và thêm nước ngập 1 inch. Đun sôi. Đậy nắp, giảm nhiệt xuống thấp và đun nhỏ lửa cho đến khi không còn màu hồng ở giữa, 10 đến 15 phút.','','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1aeee50d-f090-4f48-bf05-95eef45e5a2a',2,N'Chuyển sang thớt sạch; cắt thành từng miếng vừa ăn khi đủ nguội để xử lý.','','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d6bc037d-b023-4b7a-a86a-ca0a50c1b455',3,N'Kết hợp pesto, sốt mayonnaise và hành tây trong một bát vừa. Thêm thịt gà và ném vào.','','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('69d71dc9-a251-48bb-8229-b85d1c5dfeb5',4,N'Đánh đều dầu, giấm, muối và hạt tiêu trong một bát lớn.','','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1a65a08f-8cce-4b20-a777-8d5781ccb6bb',5,N'Thêm rau xanh và cà chua và quăng lên.','','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2d78f19d-1649-4be8-b9bb-d7bef36f3cc1',6,N'Chia salad xanh ra 4 đĩa và cho salad gà lên trên','','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9d870412-064b-4f13-9440-389dea89590b','50d02b55-7410-413a-bdde-bcae81a45767','23a5a8c3-aa75-419a-a78a-cadd93eac7e8',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c06d881b-9aee-4297-847e-e93a0b841b9b','50d02b55-7410-413a-bdde-bcae81a45767','692938d0-e603-4d02-b905-21b2a85d2ff5',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('083c754d-2f9e-442b-a079-a24be81e89fa','50d02b55-7410-413a-bdde-bcae81a45767','2f1e09e8-d5d8-4014-8dd3-f1682c06a485',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('367e066e-ae23-4ac7-b65d-6a22ea1307de','50d02b55-7410-413a-bdde-bcae81a45767','4dc1da77-eaae-40c5-a9c0-c9f8e9cd0998',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('58b964ec-3972-4dcb-bc2b-a0fb1eea3241','50d02b55-7410-413a-bdde-bcae81a45767','60d4c367-c639-4495-9e04-9de215473b7a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5da70543-853f-4d7d-88e3-3b5eac60e178','50d02b55-7410-413a-bdde-bcae81a45767','bd889820-6039-4277-a14c-a5897e21cb5a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('988ba08e-aabe-4014-831c-4740c827b9a7','50d02b55-7410-413a-bdde-bcae81a45767','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('15b62b72-a062-4207-917e-fd2f67faba23','50d02b55-7410-413a-bdde-bcae81a45767','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1234e20d-caea-4a60-91bd-b08b08031fbc','50d02b55-7410-413a-bdde-bcae81a45767','1135f1d1-d822-4b2e-88ac-d73f1831b271',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('001ac560-a3c6-4b20-a27c-8215d4a0a683','50d02b55-7410-413a-bdde-bcae81a45767','7e22c6f5-11b7-40fb-9950-d43fbe1c0850',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b57eafa1-1d20-4db4-8cc2-a376f088d2fc','50d02b55-7410-413a-bdde-bcae81a45767','5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7994cb27-5552-46a6-bc9b-0c735e8e545d','92df7117-d1fa-420a-9771-6d7f54fe5d33','50d02b55-7410-413a-bdde-bcae81a45767',1356.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('90077655-33a1-48b5-adf1-e7a04d33c50a','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','50d02b55-7410-413a-bdde-bcae81a45767',324.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8c513d4b-55c6-4c58-b604-90ed1ee47669','71c34c3c-18da-4745-8b7d-4774800170ec','50d02b55-7410-413a-bdde-bcae81a45767',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fcf76ade-4ed9-48c8-bb42-fa8459e2318c','52c2699b-b628-4499-83d4-d478f7f9c902','50d02b55-7410-413a-bdde-bcae81a45767',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1a81d733-8c50-4c23-825b-12c9da9164c7','6631457d-6680-4faa-aa2b-1e7e21d12bd4','50d02b55-7410-413a-bdde-bcae81a45767',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('65e589b7-4a41-4569-b80f-ff37ed569b7d','73bba7e2-640f-48da-b681-64d79c2ae9e0','50d02b55-7410-413a-bdde-bcae81a45767',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cd54b052-9109-4ece-a622-5c44e9c13125','998ed6be-f894-4d11-bde8-22e46900a926','50d02b55-7410-413a-bdde-bcae81a45767',27.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('195c7e02-6d25-40a0-aaa9-208ab8b40c47','1d67d321-d82e-415e-8297-b24427aa46ae','50d02b55-7410-413a-bdde-bcae81a45767',71.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7e6f79c5-0e18-4d0f-a25a-96cbde5bed82','8239b53c-b2c4-480d-a8fa-2f4660c678be','50d02b55-7410-413a-bdde-bcae81a45767',454.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','50d02b55-7410-413a-bdde-bcae81a45767');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('e188304e-d2b6-478e-8f3e-6007e98fff78',N'Salad cá ngừ đậu xanh - phục vụ cho 4 người',N'Món salad cá ngừ đậu xanh với nụ bạch hoa, feta và dưa chuột này là bữa trưa hoàn hảo để mang đi làm hoặc đi học',20,1,'https://sieungon.com/wp-content/uploads/2019/12/cong-thuc-lam-salad-ca-ngu.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dfc60e41-df92-4021-b463-6eb81721b8aa',1,N'Khuấy nước cốt chanh, bạch hoa, hẹ tây, muối và hạt tiêu với nhau trong một bát lớn. Để yên trong 5 phút.','','e188304e-d2b6-478e-8f3e-6007e98fff78');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4981bae1-ca8a-4e67-93d8-a0df77779331',2,N'Trong khi đó, quăng đậu xanh, cá ngừ, cà chua, dưa chuột, feta và thì là vào một cái bát lớn. Đánh dầu vào hỗn hợp nước cốt chanh cho đến khi kết hợp hoàn toàn. Múc khoảng 5 thìa nước sốt vào hỗn hợp đậu xanh; ném để áo khoác.','','e188304e-d2b6-478e-8f3e-6007e98fff78');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('35a9dfec-2db8-4c02-8241-61ae86d1fb93',3,N'Thêm rau bina vào phần nước sốt còn lại trong bát lớn','','e188304e-d2b6-478e-8f3e-6007e98fff78');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('142660b4-098a-48ca-8152-0cdf81d42938',4,N'Chia đều rau bina cho 4 đĩa; trên mỗi đĩa với 1 0.25 chén hỗn hợp đậu xanh.','','e188304e-d2b6-478e-8f3e-6007e98fff78');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('95379e45-e635-466c-85d1-2bba67e4e8a4',5,N'Phục vụ ngay lập tức.','','e188304e-d2b6-478e-8f3e-6007e98fff78');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('785f01ff-d14b-475c-b856-b99a9e233d08','e188304e-d2b6-478e-8f3e-6007e98fff78','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9d0e64b0-9298-4d45-bce8-81d4ee23d84f','e188304e-d2b6-478e-8f3e-6007e98fff78','e72d646c-1f41-4b25-bd41-47ed87296835',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b21c1582-7cd5-4bf6-92e9-dd0a5072eee3','e188304e-d2b6-478e-8f3e-6007e98fff78','3c3f90b9-2827-47e7-9682-de118bcff623',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bb458a21-0863-4b0c-982a-b759e1c2240a','e188304e-d2b6-478e-8f3e-6007e98fff78','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4ddbdf29-dec5-48af-bb10-ec6fd68c1938','e188304e-d2b6-478e-8f3e-6007e98fff78','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.33,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0dbb3ab7-0669-478f-b998-d1d7e09d6d78','e188304e-d2b6-478e-8f3e-6007e98fff78','25e8ca30-60af-4281-b32a-48e2f3418680',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2a5307a8-0bb2-4571-994a-c6db07cf74f4','e188304e-d2b6-478e-8f3e-6007e98fff78','73924227-4505-40dc-a50d-ab8be584fc92',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0deb32a8-cb52-4dfe-ab0d-a9b20e38e4b4','e188304e-d2b6-478e-8f3e-6007e98fff78','5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e5ac7e5d-de97-4c57-9ab3-40d458c3b1a6','e188304e-d2b6-478e-8f3e-6007e98fff78','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ed54976e-b28b-484b-8b75-2e6ac4db5e7e','e188304e-d2b6-478e-8f3e-6007e98fff78','ce4ea144-6ca0-4f08-978c-d934007390b9',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4de8d945-398d-45a0-9144-dc67477cc3be','e188304e-d2b6-478e-8f3e-6007e98fff78','8bc2ef55-001a-4e2f-8e60-854c255ceb2a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('37a13f08-a13b-4ee2-a5c2-9fbad4ccf83c','e188304e-d2b6-478e-8f3e-6007e98fff78','60d4c367-c639-4495-9e04-9de215473b7a',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d4cd0a7b-7eb1-4356-a808-590cfe18b184','e188304e-d2b6-478e-8f3e-6007e98fff78','a26668d2-4f45-4e80-80c1-6586f64e55e7',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7cd3608f-ab54-49c1-8c6f-941c3f54974a','92df7117-d1fa-420a-9771-6d7f54fe5d33','e188304e-d2b6-478e-8f3e-6007e98fff78',1494.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('41d7c8fd-15a4-45f5-af60-9ed0f240f3d8','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','e188304e-d2b6-478e-8f3e-6007e98fff78',357.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3adc9750-ced6-48f9-a058-330ea5b41a46','71c34c3c-18da-4745-8b7d-4774800170ec','e188304e-d2b6-478e-8f3e-6007e98fff78',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7f1b352a-8eef-43ac-bb72-5c10b285f536','52c2699b-b628-4499-83d4-d478f7f9c902','e188304e-d2b6-478e-8f3e-6007e98fff78',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('50348f09-178f-428a-a86a-0a7b12fabb77','6631457d-6680-4faa-aa2b-1e7e21d12bd4','e188304e-d2b6-478e-8f3e-6007e98fff78',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c81a884b-f4f4-4a63-9cd7-111012123d1d','73bba7e2-640f-48da-b681-64d79c2ae9e0','e188304e-d2b6-478e-8f3e-6007e98fff78',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a8a75305-7e15-4386-87f6-d70de22b88e5','998ed6be-f894-4d11-bde8-22e46900a926','e188304e-d2b6-478e-8f3e-6007e98fff78',21.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ae24f1b3-20ac-4378-9c70-d930a5af8d4e','1d67d321-d82e-415e-8297-b24427aa46ae','e188304e-d2b6-478e-8f3e-6007e98fff78',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6a58bde1-9d07-4592-b1a1-f4af7c540b5a','8239b53c-b2c4-480d-a8fa-2f4660c678be','e188304e-d2b6-478e-8f3e-6007e98fff78',555.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','e188304e-d2b6-478e-8f3e-6007e98fff78');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','e188304e-d2b6-478e-8f3e-6007e98fff78');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',N'Salad cải xoăn và bơ với quả việt quốc và Edamame',N'Bùng nổ với các sản phẩm giàu chất dinh dưỡng, món salad lấy cảm hứng từ California này là một cách ngon miệng và thoả mãn để cung cấp vitamin cho bạn',20,1,'https://cdn.sgtiepthi.vn/wp-content/uploads/2022/04/T3_saladcaixoankale_Kelsey-Hansen.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('84f1087a-8424-4939-934e-9d0b96d0abdf',1,N'Đặt cải xoăn vào một cái bát lớn và dùng tay xoa bóp để làm mềm lá.','','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1b87ef7b-632c-4bd9-bba2-1c2877dae96a',2,N'Thêm bơ, quả việt quất, cà chua, edamame, hạnh nhân và phô mai dê.','','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2646c156-5ce1-4fd9-9744-fdf46d7d4dda',3,N'Kết hợp dầu, nước cốt chanh, lá hẹ, mật ong, mù tạt và muối trong một cái bát nhỏ hoặc trong một cái lọ có nắp đậy kín.','','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('342676ca-c34c-413e-8ca5-0bfaf84f3d74',4,N'Đánh đều hoặc lắc đều.','','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('655d8d1f-a9db-4106-85ba-c58f258d4685',5,N'Rưới giấm lên món salad và trộn đều.','','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c0e062e1-9bca-47c7-aa97-46034b589772','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','b59f5e9d-ac11-4f0c-a3ba-ae626d1771c0',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('03902b5d-2245-40e1-9da1-acfb6dc39ea1','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','b4e0104f-e719-4e89-93f1-7a6d6992d368',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7cda4ec1-9efe-4938-ae14-eea26263d6fd','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','13331cad-991b-48a3-9ced-90dfd7d75cfa',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3965966f-a5ba-4354-9ee4-7cec0c9fb22c','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','ab67a610-dd43-4f09-9092-5fb4f0301e18',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a00d420b-27b8-4dca-8739-4229f94b5142','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','8e3bf307-a55a-499d-b5ae-15ea010403b4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('56ce939a-febc-4e6d-8bad-379a01e0eb70','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','e751c2dc-dea8-4281-8a24-fca824169bf1',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('42293538-f09e-4345-ab99-2734743b3ce1','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','3743a2be-2065-48a5-9391-29da30c87a82',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6776fb62-8bcd-4060-9554-cba5dbc30154','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','60d4c367-c639-4495-9e04-9de215473b7a',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ad5f2f99-fd41-4f38-abcd-42424d22e006','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4235250a-4c92-4e8d-9c1d-e6759069c67e','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','3c3f90b9-2827-47e7-9682-de118bcff623',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a4d43e79-3d47-41f1-af68-4d167fdd3d87','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','5910feab-2f62-4229-bb39-29e3aa451a96',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('41cc3adc-4f35-4a27-901f-a91cb4a546e9','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','638274c7-a8bb-4d20-a3b3-766ad92a9dde',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('02ec5a7f-f7eb-4887-842f-68f7cdbe6309','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e','e41475bc-ef90-4ac7-95d0-017c9da58216',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('aa5acc35-c2b8-46ff-9db4-e6d61c538695','92df7117-d1fa-420a-9771-6d7f54fe5d33','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',1540.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3b826aa8-38de-4aa6-b253-69be8f8d9c10','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',368.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8d2bd666-f6f1-4b06-bd1a-d69b5be5ce3b','71c34c3c-18da-4745-8b7d-4774800170ec','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',29.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7b928674-e9a4-452f-82f7-8480f578e53c','52c2699b-b628-4499-83d4-d478f7f9c902','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5845be88-f74f-433c-a6c2-82f143f98b83','6631457d-6680-4faa-aa2b-1e7e21d12bd4','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1b43c39a-4e9d-4fca-80d5-528105c14ded','73bba7e2-640f-48da-b681-64d79c2ae9e0','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cf5bface-1a79-4315-8d16-adee4cfe3e6c','998ed6be-f894-4d11-bde8-22e46900a926','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('472089f3-e495-4f35-9a08-badc35c3211a','1d67d321-d82e-415e-8297-b24427aa46ae','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cf7360e0-eda1-42d4-90b9-56053a8cf894','8239b53c-b2c4-480d-a8fa-2f4660c678be','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e',674.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','1f11f8c7-e2e7-453e-bc24-4415edcb6b9e');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('ce915076-c1ca-4a8d-9a81-7eae0237a1f3',N'Salad Cobb cắt nhỏ với thịt gà',N'Món salad xắt nhỏ tốt cho sức khoẻ này là một cách tuyệt vời để sử dụng hết thịt gà nấu chín còn sót lại',5,1,'https://cdn.tgdd.vn/2020/07/CookProductThumb/cobb-salad-7B-1200-620x620.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f9073f15-6ef9-4019-ade9-f324e7787aa9',1,N'Đặt rau diếp vào một bát vừa.','','ce915076-c1ca-4a8d-9a81-7eae0237a1f3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4be88220-2b54-4c7c-a2cb-db6210d78ea5',2,N'Thêm Toss 1 muỗng canh.','','ce915076-c1ca-4a8d-9a81-7eae0237a1f3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dcf91e19-032d-48e9-b3b8-89496dd66d3e',3,N'Sắp xếp cà chua, dưa chuột, nấm, thịt gà, trứng và đậu thành hàng trên rau diếp. .','','ce915076-c1ca-4a8d-9a81-7eae0237a1f3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('87453cf9-9165-4c9e-bf28-9b65ee2a11d1',4,N'Đổ 1 muỗng canh còn lại và trình bày','','ce915076-c1ca-4a8d-9a81-7eae0237a1f3');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('425296cc-f844-4ce2-8e61-4faf3a115422','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','76575f78-e50d-424b-b244-16a5083e407f',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1a80fb85-df96-4f82-8e99-72ae7c5bf520','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','3b1279b6-df80-40d0-a1dc-e11d7e1f10b3',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4fac24b6-407d-46cf-9dad-8509a680d5c1','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','770f3d34-b289-44eb-94fd-7b7bb598181d',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('40cbc918-6f5a-48f8-8d47-f34d13d69ccd','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('08938b11-899f-434d-850a-6829d82cf15c','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','44ffdfb9-bdfe-4ea4-8f6c-0efd1b760ee7',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('79e89bbb-5c88-4696-8ad7-29fb25f49491','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','47204ccc-becf-45d7-a760-9828b161864d',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8add51c1-60be-48e7-948a-d485ff40c714','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','b19126ae-a600-40ec-9c29-c2a21444267e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e78edb72-070c-4ee2-a85f-47da213a4398','ce915076-c1ca-4a8d-9a81-7eae0237a1f3','19eca04c-1a89-4893-8cd1-320194a089f2',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5315b932-4323-45e9-9eb0-542e3207835f','92df7117-d1fa-420a-9771-6d7f54fe5d33','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',1715.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('011dea99-f1c2-4ae4-a64c-7541b7a614ef','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',410.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e8f218f1-3782-4cec-be00-cc8ebb2e0449','71c34c3c-18da-4745-8b7d-4774800170ec','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',22.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('63015b17-0c0f-4c4f-921a-c342ca85c14d','52c2699b-b628-4499-83d4-d478f7f9c902','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('88e72c52-b555-48aa-a921-4933c92e6a42','6631457d-6680-4faa-aa2b-1e7e21d12bd4','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',78.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b4a94b54-6548-4a40-8989-83eea31f50d3','73bba7e2-640f-48da-b681-64d79c2ae9e0','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a6e97c0b-4a0a-453b-ba68-26b00401c33f','998ed6be-f894-4d11-bde8-22e46900a926','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cabfd1bb-9b6d-4dc3-af32-c8200413fe4a','1d67d321-d82e-415e-8297-b24427aa46ae','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',175.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2a1aeeeb-2156-4a5a-8908-a8474b6b5d7a','8239b53c-b2c4-480d-a8fa-2f4660c678be','ce915076-c1ca-4a8d-9a81-7eae0237a1f3',333.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','ce915076-c1ca-4a8d-9a81-7eae0237a1f3');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','ce915076-c1ca-4a8d-9a81-7eae0237a1f3');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('30409bc4-c3b0-41ca-b041-cee37e7596f2',N'Salad rau bina, dâu tây với quả bơ và quả óc chó',N'Phục vụ món salad rau bina dâu tây vào mùa hè này cùng với súp hoặc nữa chiếc bánh mì sandwich, hoặc phủ lên trên món gà nướng hay cá hồi nướng để có một bữa ăn lành mạnh, đầy đủ và dễ dàng',5,1,'https://i.vietgiaitri.com/2022/7/22/cach-lam-salad-rau-chan-vit-thanh-mat-gion-nhe-cuc-ngon-tai-nha-a94-6553566.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d7f5fc75-80ba-4de2-8daa-fe565f8b6702',1,N'Kết hợp rau bina, hành tây và dâu tây trong một bát vừa.','','30409bc4-c3b0-41ca-b041-cee37e7596f2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('63fdf8da-4b44-4f27-918c-b18e8a1e3689',2,N'Cho sốt dầu dấm','','30409bc4-c3b0-41ca-b041-cee37e7596f2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c4aeb7cd-2512-4605-b6eb-08f4cd4e8c85',3,N'Để lên trên là quả bơ và quả óc chó.','','30409bc4-c3b0-41ca-b041-cee37e7596f2');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('020d9c18-23b5-436a-9013-f559db3f4cea','30409bc4-c3b0-41ca-b041-cee37e7596f2','a26668d2-4f45-4e80-80c1-6586f64e55e7',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9f9e6e12-be9c-491e-a9dc-9eef84d76466','30409bc4-c3b0-41ca-b041-cee37e7596f2','a3fe9955-6f41-4d1b-8387-80a92380dfa5',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c7a8a9e2-872e-47df-a393-66ebe1cdbe5b','30409bc4-c3b0-41ca-b041-cee37e7596f2','b4e0104f-e719-4e89-93f1-7a6d6992d368',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e5863db0-9b6c-4f27-ad59-542e284ad35e','30409bc4-c3b0-41ca-b041-cee37e7596f2','e7a2b737-ce13-47ec-8c30-d31d575f1f5a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ec373658-6ec4-42e6-b081-250d0bdf9bc1','30409bc4-c3b0-41ca-b041-cee37e7596f2','0d8dfb33-6c69-430f-8cb6-e71bb6880bca',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('adf5b78a-c4f2-4cc4-a3ae-40e8c259b70e','30409bc4-c3b0-41ca-b041-cee37e7596f2','0a896963-de38-4d37-befa-6c8326f297e2',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bb77acab-f044-43ec-ab64-fe2027b5ba88','92df7117-d1fa-420a-9771-6d7f54fe5d33','30409bc4-c3b0-41ca-b041-cee37e7596f2',1238.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('784f5b05-89bd-4b0f-8b36-7686a5a8b9e0','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','30409bc4-c3b0-41ca-b041-cee37e7596f2',296.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1cbdba62-6e29-4ab3-9ffd-2316720961ab','71c34c3c-18da-4745-8b7d-4774800170ec','30409bc4-c3b0-41ca-b041-cee37e7596f2',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('70c22a77-4d97-42e0-9dd0-248f99becf53','52c2699b-b628-4499-83d4-d478f7f9c902','30409bc4-c3b0-41ca-b041-cee37e7596f2',18.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d202e22a-2123-4825-bb91-51971b026820','6631457d-6680-4faa-aa2b-1e7e21d12bd4','30409bc4-c3b0-41ca-b041-cee37e7596f2',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dddb56c3-c137-4cbe-8e30-d7f799334ba0','73bba7e2-640f-48da-b681-64d79c2ae9e0','30409bc4-c3b0-41ca-b041-cee37e7596f2',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0814da38-b145-43a1-98fd-53ada110b737','998ed6be-f894-4d11-bde8-22e46900a926','30409bc4-c3b0-41ca-b041-cee37e7596f2',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('74bca4e8-0057-49bf-896d-3817486b641e','1d67d321-d82e-415e-8297-b24427aa46ae','30409bc4-c3b0-41ca-b041-cee37e7596f2',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4ab57a66-c9af-4014-aa58-deea43c57bdd','8239b53c-b2c4-480d-a8fa-2f4660c678be','30409bc4-c3b0-41ca-b041-cee37e7596f2',195.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','30409bc4-c3b0-41ca-b041-cee37e7596f2');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','30409bc4-c3b0-41ca-b041-cee37e7596f2');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('64802f46-6b9b-4a8f-a8be-b542665b2151',N'Salad cá hồi Hy Lạp',N'Nếu salad trộn không làm bạn no thì hãy thử công thức salad này, công thức này yêu cầu bạn phải trộn một lớp rau xanh truyền thống với rau củ nướng và cá hồi giàu protein',5,1,'https://cdn.tgdd.vn/2020/11/CookRecipe/GalleryStep/thanh-pham-820.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bce45a12-edae-4675-938a-5fa980669601',1,N'Kết hợp rau xà lách, rau nướng, cá hồi, hạnh nhân và phô mai Parmesan.','','64802f46-6b9b-4a8f-a8be-b542665b2151');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d9296dd8-29a3-4603-845b-21b352279817','64802f46-6b9b-4a8f-a8be-b542665b2151','1135f1d1-d822-4b2e-88ac-d73f1831b271',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b8b71f63-df83-41f1-a868-2458cd9aa796','64802f46-6b9b-4a8f-a8be-b542665b2151','ae659ca8-4df1-4d6f-8e85-b58279da8d50',0.67,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1c8ead15-dd89-43f4-91ad-bf9d5f69b52d','64802f46-6b9b-4a8f-a8be-b542665b2151','f8ea0819-d0b8-42a2-a430-b71465b635c1',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fbceb20b-6b67-42a9-a557-91b4330f776c','64802f46-6b9b-4a8f-a8be-b542665b2151','8bc76aee-1f09-4812-af3c-74efdc21913a',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8551d415-c5e4-4b6b-8512-e4e3a3ccf640','64802f46-6b9b-4a8f-a8be-b542665b2151','bb08a9d8-6a59-47c6-8846-3826c86a2174',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1d2569c1-fce8-44ce-b909-b94574f18462','64802f46-6b9b-4a8f-a8be-b542665b2151','4979b2d8-17b3-49bd-b4ae-809bad62bc57',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('58222273-b04a-4832-a210-c71b94e12052','92df7117-d1fa-420a-9771-6d7f54fe5d33','64802f46-6b9b-4a8f-a8be-b542665b2151',1523.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9fa5f69c-89d3-443f-a2a5-420f3bdc2c51','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','64802f46-6b9b-4a8f-a8be-b542665b2151',364.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6da452d7-ca24-4e2f-9fb9-09259ecca703','71c34c3c-18da-4745-8b7d-4774800170ec','64802f46-6b9b-4a8f-a8be-b542665b2151',16.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('00a269e3-1317-4b49-8dca-6aa250455346','52c2699b-b628-4499-83d4-d478f7f9c902','64802f46-6b9b-4a8f-a8be-b542665b2151',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5a8386d8-d67d-409a-b8c1-68ea735dfdb6','6631457d-6680-4faa-aa2b-1e7e21d12bd4','64802f46-6b9b-4a8f-a8be-b542665b2151',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5d96cfb1-83bc-41c3-9aff-fac0172bfdb9','73bba7e2-640f-48da-b681-64d79c2ae9e0','64802f46-6b9b-4a8f-a8be-b542665b2151',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c1cbde02-eb55-44d2-b08f-ad812426641a','998ed6be-f894-4d11-bde8-22e46900a926','64802f46-6b9b-4a8f-a8be-b542665b2151',31.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('294af82c-5a66-4f25-abc5-d3e0a23fc939','1d67d321-d82e-415e-8297-b24427aa46ae','64802f46-6b9b-4a8f-a8be-b542665b2151',57.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ba8a36f3-148b-4d18-99c5-4cfc9a07312e','8239b53c-b2c4-480d-a8fa-2f4660c678be','64802f46-6b9b-4a8f-a8be-b542665b2151',814.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','64802f46-6b9b-4a8f-a8be-b542665b2151');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','64802f46-6b9b-4a8f-a8be-b542665b2151');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('26773e25-206a-4687-be3d-c06adad8905d',N'Salad dưa chuột, cà chua và rau cải lông với sốt hummus',N'Cà chua, dưa chuột, hành tím và rau cải lông kèm với phô mai feta trong món salad này lấy cảm hứng từ ẩm thực Hy Lạp tạo nên bữa ăn tốt cho sức khoẻ.',10,1,'https://img.meta.com.vn/Data/image/2021/03/19/salad-dua-chuot-1.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('077575b8-38ad-4f8a-821e-c59668cc4fcd',1,N'Cho rau cải lông vào trong một cái bát với cà chua, dưa chuột, hành tây, dầu, giấm và hạt tiêu.','','26773e25-206a-4687-be3d-c06adad8905d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ad025404-3a76-4f89-8ba8-a5d03fcc5f00',2,N'Cho trên cùng là phô mai feta.','','26773e25-206a-4687-be3d-c06adad8905d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('56d0dccd-4c96-43ba-9278-e89c3ba1c53e',3,N'Phục vụ với pita và hummus.','','26773e25-206a-4687-be3d-c06adad8905d');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('46f08bcc-2ec6-41f8-bf21-859e1c8ce4e2','26773e25-206a-4687-be3d-c06adad8905d','1135f1d1-d822-4b2e-88ac-d73f1831b271',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1753bc98-bc97-4998-93c4-fd2f9a3c3ab0','26773e25-206a-4687-be3d-c06adad8905d','5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('335e99f5-3a90-4d88-bc09-d62b8623f91d','26773e25-206a-4687-be3d-c06adad8905d','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('edb513b4-609f-4dc8-b8d8-f1a5205bff2d','26773e25-206a-4687-be3d-c06adad8905d','a3fe9955-6f41-4d1b-8387-80a92380dfa5',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('853524ac-49e9-4fd8-b427-6fb706d58054','26773e25-206a-4687-be3d-c06adad8905d','60d4c367-c639-4495-9e04-9de215473b7a',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5e1c2be3-3886-490a-9c59-99ee29bb76fe','26773e25-206a-4687-be3d-c06adad8905d','bd889820-6039-4277-a14c-a5897e21cb5a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d5e73aa7-0a26-47c9-a1e1-6752861ab2a5','26773e25-206a-4687-be3d-c06adad8905d','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ada8d5d8-13c7-40b6-bc65-fe8fb07399ac','26773e25-206a-4687-be3d-c06adad8905d','ce4ea144-6ca0-4f08-978c-d934007390b9',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b93111c7-02cc-4699-bb76-c3c2f257371d','26773e25-206a-4687-be3d-c06adad8905d','e86a3365-2fc8-4422-bd91-2b8aaf01e8e4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('865429a8-3d62-48de-81b9-02aa95e8b087','26773e25-206a-4687-be3d-c06adad8905d','9dce792a-191a-4d21-a57b-ac156c32a0a9',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f0910063-22e3-4daf-a64b-cad4e797c562','92df7117-d1fa-420a-9771-6d7f54fe5d33','26773e25-206a-4687-be3d-c06adad8905d',1766.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('748e930e-6771-4095-8d63-4c97e09f226a','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','26773e25-206a-4687-be3d-c06adad8905d',422.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('40b5cb55-9993-4759-bae7-a352fa6eab6b','71c34c3c-18da-4745-8b7d-4774800170ec','26773e25-206a-4687-be3d-c06adad8905d',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b8f067a6-69d2-4512-9cd1-cb60fb13258b','52c2699b-b628-4499-83d4-d478f7f9c902','26773e25-206a-4687-be3d-c06adad8905d',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('87cb2569-deae-4fb0-aebc-5f7ed602c778','6631457d-6680-4faa-aa2b-1e7e21d12bd4','26773e25-206a-4687-be3d-c06adad8905d',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4d91b833-3c77-455a-8171-a215aad3246c','73bba7e2-640f-48da-b681-64d79c2ae9e0','26773e25-206a-4687-be3d-c06adad8905d',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4d412ab2-7b08-4fc6-970b-f2dd0be11028','998ed6be-f894-4d11-bde8-22e46900a926','26773e25-206a-4687-be3d-c06adad8905d',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('61bddf8a-65d6-4a1d-bc48-511ee3e152c0','1d67d321-d82e-415e-8297-b24427aa46ae','26773e25-206a-4687-be3d-c06adad8905d',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('156006f5-51ae-42cc-b3e2-b911fdd7dcbb','8239b53c-b2c4-480d-a8fa-2f4660c678be','26773e25-206a-4687-be3d-c06adad8905d',486.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','26773e25-206a-4687-be3d-c06adad8905d');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','26773e25-206a-4687-be3d-c06adad8905d');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('0ff3b255-158a-485d-b3a3-72477eeae8a5',N'Gà nướng và salad rau củ với đậu xanh và phô mai feta',N'Các loại thảo mộc tươi, ô liu và phô mai feta mang đến cho món salad rau và gà nướng này hương vị đặc biệt.',25,2,'https://cdn.tgdd.vn/2020/07/CookProduct/Untitled-1-1200x676-16.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5e5a0545-5757-4b7f-bdf8-62d50952a1ad',1,N'Làm nóng lò nướng ở mức trung bình (350 độ F đến 400 độ F). Phủ nhẹ thịt gà, hành tây và bí bằng bình xịt nấu ăn. Rắc gà với hạt tiêu và 0.25 muỗng cà phê muối. Đặt gà lên vỉ đã bôi dầu (có xịt nấu ăn); nướng, không đậy nắp, thỉnh thoảng trở, cho đến khi cắm nhiệt kế vào phần dày nhất của thịt cho thấy nhiệt độ 165 độ F, khoảng 8 phút. Loại bỏ khỏi vỉ nướng.','','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('eea56253-bb39-490a-88f4-1869f540cb7d',2,N'Đặt hành tây và bí trên vỉ đã bôi dầu (có xịt nấu ăn); nướng, không đậy nắp, cho đến khi than nhẹ.','','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9ffc6676-ee8b-487f-883c-fde9f5173d74',3,N'Đánh đều thì là, oregano, dầu, giấm và 0.25 thìa cà phê muối còn lại trong một bát lớn cho đến khi kết hợp.','','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dd0e50c9-cda3-40c4-86b4-a7e9acedb93d',4,N'Thêm cà chua, đậu xanh, feta và ô liu; ném để áo khoác. Xắt nhỏ hành tây và bí; thêm vào hỗn hợp trong bát.','','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3613bcf0-b864-4792-a69b-761e34b1c3e7',5,N'Chặt gà thành miếng 0.5-inch; gấp vào hỗn hợp salad.','','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('57c3fac7-12dc-4149-94f1-8c5b87497a8a',6,N'Phục vụ ngay lập tức.','','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b1f94744-7a64-4379-b445-bb5b5c231440','0ff3b255-158a-485d-b3a3-72477eeae8a5','23a5a8c3-aa75-419a-a78a-cadd93eac7e8',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('705f8863-d7ed-4248-9267-a26c62c0a771','0ff3b255-158a-485d-b3a3-72477eeae8a5','d1ad0935-0fe1-4d09-82b5-ea94b6673b66',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d917ff00-d298-46bf-848a-815f4372b956','0ff3b255-158a-485d-b3a3-72477eeae8a5','fb564db3-e9ac-4796-a9aa-70acbcb43780',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('61e8b711-c269-4c2f-9a09-12a0188428d4','0ff3b255-158a-485d-b3a3-72477eeae8a5','6bf0746b-7123-47ce-ac26-fc175490b786',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cfc32ff4-ab2b-46fb-b5d3-e9a36fe93c58','0ff3b255-158a-485d-b3a3-72477eeae8a5','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f4382ce9-5748-4cee-9125-a1c2b063c3da','0ff3b255-158a-485d-b3a3-72477eeae8a5','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6386d845-ba57-481b-879d-7a62209c0349','0ff3b255-158a-485d-b3a3-72477eeae8a5','8bc2ef55-001a-4e2f-8e60-854c255ceb2a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1c8f5cc6-d150-4768-91d9-f09de0a6878f','0ff3b255-158a-485d-b3a3-72477eeae8a5','3bbac6cd-1c4e-4481-a0a0-d9bece06ffa3',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b159bc6a-70b9-4473-a3fc-5c44a4cbffa7','0ff3b255-158a-485d-b3a3-72477eeae8a5','60d4c367-c639-4495-9e04-9de215473b7a',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1b801665-7029-4e4a-b529-fb4bb0e0071a','0ff3b255-158a-485d-b3a3-72477eeae8a5','bd889820-6039-4277-a14c-a5897e21cb5a',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bce84156-5d18-4178-b7f6-8dff6155a32e','0ff3b255-158a-485d-b3a3-72477eeae8a5','5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('93fec638-a80a-4d68-a4a6-584fadefd5c8','0ff3b255-158a-485d-b3a3-72477eeae8a5','25e8ca30-60af-4281-b32a-48e2f3418680',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eee3e4bb-5a89-4e20-87ba-03115aafe61a','0ff3b255-158a-485d-b3a3-72477eeae8a5','ce4ea144-6ca0-4f08-978c-d934007390b9',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('205fb32b-da6c-4c93-afe5-b435da1d2a5b','0ff3b255-158a-485d-b3a3-72477eeae8a5','4ce6c9e7-38df-48cc-b1cf-ee19a1816867',8.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e7e83e5e-efcd-4a2b-bfd7-96bdcbcff1c1','92df7117-d1fa-420a-9771-6d7f54fe5d33','0ff3b255-158a-485d-b3a3-72477eeae8a5',1665.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0b1add17-dc88-4409-ad3a-239a2e016dd0','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','0ff3b255-158a-485d-b3a3-72477eeae8a5',398.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d2b5261a-684f-4234-92a2-499dbfba047b','71c34c3c-18da-4745-8b7d-4774800170ec','0ff3b255-158a-485d-b3a3-72477eeae8a5',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2a56f1b8-8505-486e-9504-7192931865cf','52c2699b-b628-4499-83d4-d478f7f9c902','0ff3b255-158a-485d-b3a3-72477eeae8a5',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('11adceb6-4ea4-4e51-8bdd-916dca9c3b1d','6631457d-6680-4faa-aa2b-1e7e21d12bd4','0ff3b255-158a-485d-b3a3-72477eeae8a5',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('05d00d25-4eaf-461d-ac44-ef4178e4aa02','73bba7e2-640f-48da-b681-64d79c2ae9e0','0ff3b255-158a-485d-b3a3-72477eeae8a5',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1613915b-40dd-4ed8-b1b9-1346aa390597','998ed6be-f894-4d11-bde8-22e46900a926','0ff3b255-158a-485d-b3a3-72477eeae8a5',45.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('897b7acd-f1db-47f8-837b-2b305b82fb35','1d67d321-d82e-415e-8297-b24427aa46ae','0ff3b255-158a-485d-b3a3-72477eeae8a5',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6d1dea04-741c-41cf-b6fb-de518be5dff1','8239b53c-b2c4-480d-a8fa-2f4660c678be','0ff3b255-158a-485d-b3a3-72477eeae8a5',587.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','0ff3b255-158a-485d-b3a3-72477eeae8a5');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('776691ab-8414-4217-8bc0-91543311d552',N'Salad Steak nướng với ngô, dưa chuột và sốt hành ngọt',N'Hành nướng thực hiện nhiệm vụ kép trong món ăn này. Hương vị ngọt ngào của nó bên cạnh ngô nướng và salad và vị khói được pha trộn từ bít tết tạo ra một món ăn tròn vị',20,2,'https://cdn.tgdd.vn/2020/11/CookRecipe/Avatar/salad-thi%CC%A3t-bo%CC%80-kie%CC%89u-tha%CC%81i-thumbnail.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e4d5543a-d5ef-43af-9498-3a8a9c82f0d6',1,N'Làm nóng lò nướng ở mức trung bình cao. Phết hành tây và ngô với 1 muỗng canh dầu.','','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c8df58a4-2940-4fc0-b3fd-7ad954257f21',2,N'Nêm bít tết với 0.25 thìa cà phê muối và hạt tiêu.','','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9e60dc11-e421-440d-80f1-1b6111acb014',3,N'Tra dầu vào vỉ nướng. Nướng hành tây và ngô, thỉnh thoảng lật, cho đến khi mềm và cháy nhẹ, khoảng 8 phút.','','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fa2e6ca2-8c07-43fc-9811-1d8a05f70716',4,N'Nướng miếng bít tết, lật một lần, cho đến khi nhiệt kế đọc tức thời được lắp vào phần dày nhất ghi 125°F cho nhiệt độ vừa-chín, từ 6 đến 8 phút. Chuyển miếng bít tết lên thớt và để yên trong 5 phút.','','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d9d690a1-49db-4a32-8429-2551b3e44a43',5,N'Cắt hạt từ ngô. Cho 2 củ hành tây, giấm, mù tạt và 4 muỗng canh dầu còn lại, 0.5 muỗng cà phê muối và 0.25 muỗng cà phê tiêu vào máy xay. Xay đến khi mịn.','','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('503e8b34-f827-4ee9-ae9a-015b46248ae5',6,N'Chuyển nước sốt vào một cái bát lớn; thêm rau xanh, dưa chuột, rau thơm, ngô và phần hành tây còn lại.','','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('76ebcd8c-4d05-461b-93db-cf54d1d9ef49',7,N'Cắt miếng bít tết và phục vụ trên rau xanh. Rắc hạt hướng dương.','','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cf2df0bc-6df8-4cdf-a3eb-7893ee4b1aa7','776691ab-8414-4217-8bc0-91543311d552','26f3185f-d27f-4c96-ae78-b7328e6e0752',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9425fb75-e085-4699-b99a-604d22505d67','776691ab-8414-4217-8bc0-91543311d552','d0ea8f73-92fa-4573-8a67-c65a15238902',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e7f456b1-71bc-466d-b320-873d77a65ce6','776691ab-8414-4217-8bc0-91543311d552','60d4c367-c639-4495-9e04-9de215473b7a',5.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('99e07d83-5d67-4dad-b01b-bd62f3ae180d','776691ab-8414-4217-8bc0-91543311d552','525d2b50-6015-4cb8-b162-c508e24f5e72',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1dc11fa3-fae9-4281-8c7b-9aee46d498fd','776691ab-8414-4217-8bc0-91543311d552','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('18e41237-560b-48ef-976c-9b82e49ef3c9','776691ab-8414-4217-8bc0-91543311d552','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c78a8fba-fee0-4c66-84da-b62772ef78be','776691ab-8414-4217-8bc0-91543311d552','bd889820-6039-4277-a14c-a5897e21cb5a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('94259021-869a-4b0e-9144-8c0d26308e4e','776691ab-8414-4217-8bc0-91543311d552','638274c7-a8bb-4d20-a3b3-766ad92a9dde',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2d18c38e-b3d7-4d36-aa70-f8c85f83b52a','776691ab-8414-4217-8bc0-91543311d552','ae659ca8-4df1-4d6f-8e85-b58279da8d50',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aeac5d42-07ed-4879-ace9-a3c4e8afa56a','776691ab-8414-4217-8bc0-91543311d552','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c548051d-e640-4d5f-8c18-858b60d71ba1','776691ab-8414-4217-8bc0-91543311d552','3c5883ae-22da-43b6-8961-56795425ac0c',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('856a22c7-209c-4d2e-b5f0-966ab7fcfe92','776691ab-8414-4217-8bc0-91543311d552','20ea6721-4b11-4209-8d7b-80fe6683d854',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f6a2e34c-f521-4b7a-b82d-3a814ab1e6fd','92df7117-d1fa-420a-9771-6d7f54fe5d33','776691ab-8414-4217-8bc0-91543311d552',1711.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1eb23724-783c-4fb1-b7b4-3f7d3f201b4e','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','776691ab-8414-4217-8bc0-91543311d552',409.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5dfe9043-9f5c-47a3-aaca-ef0acbde7f71','71c34c3c-18da-4745-8b7d-4774800170ec','776691ab-8414-4217-8bc0-91543311d552',27.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7dfdcadd-58c1-40cb-839f-c32d73364214','52c2699b-b628-4499-83d4-d478f7f9c902','776691ab-8414-4217-8bc0-91543311d552',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('62269c3b-1ce4-418a-a00e-9db485f2d606','6631457d-6680-4faa-aa2b-1e7e21d12bd4','776691ab-8414-4217-8bc0-91543311d552',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f0e05aa2-f1d5-446a-b42e-f096d2f211c1','73bba7e2-640f-48da-b681-64d79c2ae9e0','776691ab-8414-4217-8bc0-91543311d552',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('efa20eb2-9742-4a88-a94a-10cd574b7b6d','998ed6be-f894-4d11-bde8-22e46900a926','776691ab-8414-4217-8bc0-91543311d552',27.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('af8c3cb2-2dda-4ae8-920e-1263cc55dbd1','1d67d321-d82e-415e-8297-b24427aa46ae','776691ab-8414-4217-8bc0-91543311d552',57.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1373f6cd-7175-43b4-a406-854383f5df1b','8239b53c-b2c4-480d-a8fa-2f4660c678be','776691ab-8414-4217-8bc0-91543311d552',544.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','776691ab-8414-4217-8bc0-91543311d552');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('1a47f436-d06c-4337-8273-12e0f57711d0',N'Salad Tortellini Hy Lạp',N'Bánh tortellini phô mai tươi và các nguyên liệu salad cổ điển của Hy Lạp như cà chua, dưa chuột và hành tím kết hợp với nhau để tạo thành một món ăn hoàn hảo.',20,2,'https://cdn.tgdd.vn/Files/2022/05/16/1432739/bat-mi-cach-lam-salad-hy-lap-don-gian-gion-mat-cuc-bo-duong-202205160921499182.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2a0d1ad0-3f49-4efc-9928-a02d353381d2',1,N'Mang một nồi nước lớn để đun sôi. Thêm tortellini và nấu cho đến khi mềm, khoảng 4 phút. Để ráo nước.','','1a47f436-d06c-4337-8273-12e0f57711d0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ec005296-3320-44b8-a89b-7989e86593df',2,N'Trong khi đó, đánh đều feta, dầu, giấm, lá oregano, hạt tiêu và muối với nhau trong một bát lớn.','','1a47f436-d06c-4337-8273-12e0f57711d0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bb437e2e-fdd3-4ecf-a0d9-0a8927337516',3,N'Thêm cà chua, dưa chuột, rau bina, hành tím và tortellini đã nấu chín.','','1a47f436-d06c-4337-8273-12e0f57711d0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('99ab7a71-4015-44b9-bbb1-41d6c45db8f1',4,N'Trộn đều tất cả với nhau.','','1a47f436-d06c-4337-8273-12e0f57711d0');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b40dc71e-1c7a-4a0d-a535-6f4780475039','1a47f436-d06c-4337-8273-12e0f57711d0','05b70230-3ea3-48b6-ad24-59364e888d13',30.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3343eab6-492e-4dca-8aaa-2068301e3341','1a47f436-d06c-4337-8273-12e0f57711d0','ce4ea144-6ca0-4f08-978c-d934007390b9',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5ad78fc8-6c08-450f-ab56-66c890e58bdc','1a47f436-d06c-4337-8273-12e0f57711d0','60d4c367-c639-4495-9e04-9de215473b7a',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7823f24f-b411-489b-857d-f7928a420124','1a47f436-d06c-4337-8273-12e0f57711d0','bd889820-6039-4277-a14c-a5897e21cb5a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7a3bfb83-3f56-499d-973e-50fbdf165629','1a47f436-d06c-4337-8273-12e0f57711d0','3bbac6cd-1c4e-4481-a0a0-d9bece06ffa3',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e69d20c6-d7c1-4f83-b3df-26595655646c','1a47f436-d06c-4337-8273-12e0f57711d0','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b1b8b0e9-8d88-4995-9773-0e275a9cc2a8','1a47f436-d06c-4337-8273-12e0f57711d0','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('94ef744d-bf79-49df-92d8-191dc8206d7e','1a47f436-d06c-4337-8273-12e0f57711d0','770f3d34-b289-44eb-94fd-7b7bb598181d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ee5011dc-0d53-46b3-a64d-1cb0b990883b','1a47f436-d06c-4337-8273-12e0f57711d0','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4c64a201-304b-4257-935c-cb7516b3b79b','1a47f436-d06c-4337-8273-12e0f57711d0','a26668d2-4f45-4e80-80c1-6586f64e55e7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e0b7b61c-2bda-4e5a-97e4-2e63590af49e','1a47f436-d06c-4337-8273-12e0f57711d0','a3fe9955-6f41-4d1b-8387-80a92380dfa5',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b0fdaed6-e98c-4a1b-82a4-fcee4d7c99ec','92df7117-d1fa-420a-9771-6d7f54fe5d33','1a47f436-d06c-4337-8273-12e0f57711d0',1000.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('aff7d09f-cb93-406e-9530-a5529391ce36','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','1a47f436-d06c-4337-8273-12e0f57711d0',239.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('55ddcc9e-e28e-482f-add6-6a5cff986bd7','71c34c3c-18da-4745-8b7d-4774800170ec','1a47f436-d06c-4337-8273-12e0f57711d0',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('305bb6cd-1c55-426f-b92b-d71b3345ab38','52c2699b-b628-4499-83d4-d478f7f9c902','1a47f436-d06c-4337-8273-12e0f57711d0',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('55352e82-d0c5-4667-90c3-89b2b146a0fe','6631457d-6680-4faa-aa2b-1e7e21d12bd4','1a47f436-d06c-4337-8273-12e0f57711d0',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3bc859a2-9368-47bb-b830-7cef13062e83','73bba7e2-640f-48da-b681-64d79c2ae9e0','1a47f436-d06c-4337-8273-12e0f57711d0',28.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('50b6772c-ae1b-4ff1-a923-acb11c125b00','998ed6be-f894-4d11-bde8-22e46900a926','1a47f436-d06c-4337-8273-12e0f57711d0',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('425099ad-5a29-4dd3-9792-a1759b6a6844','1d67d321-d82e-415e-8297-b24427aa46ae','1a47f436-d06c-4337-8273-12e0f57711d0',25.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('abc309ca-6f82-42f7-905e-7c6450611392','8239b53c-b2c4-480d-a8fa-2f4660c678be','1a47f436-d06c-4337-8273-12e0f57711d0',353.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','1a47f436-d06c-4337-8273-12e0f57711d0');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','1a47f436-d06c-4337-8273-12e0f57711d0');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('d9718719-852c-43bd-8e64-8cafcabde7ca',N'Salad Hy Lạp với Cá Mòi',N'Các thành phần tươi của món salad Hy Lạp kết hợp tốt với cá mòi có hương vị đậm đà.',20,1,'https://banner2.cleanpng.com/20180805/hhh/kisspng-greek-salad-tuna-salad-vegetarian-cuisine-greek-cu-egg-salad-5b67bdf879f975.8462410715335254964996.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9a74fe55-bc7d-4f23-81d5-1903ed326ac1',1,N'Đánh đều nước cốt chanh, dầu, tỏi, oregano và hạt tiêu trong một bát lớn cho đến khi kết hợp tốt.','','d9718719-852c-43bd-8e64-8cafcabde7ca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5a611993-a51b-4340-bd23-de6a51cc6236',2,N'Thêm cà chua, dưa chuột, đậu xanh, feta, hành tây và ô liu; nhẹ nhàng quăng để kết hợp.','','d9718719-852c-43bd-8e64-8cafcabde7ca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('842d3830-a077-4d6c-96f5-bc1bcc8537c3',3,N'Chia salad ra 4 đĩa và cho cá mòi lên trên.','','d9718719-852c-43bd-8e64-8cafcabde7ca');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1507a8ca-ffce-4701-a26b-45f230dcf38f','d9718719-852c-43bd-8e64-8cafcabde7ca','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3c57e4b0-8444-463f-89bd-b08bc5c39958','d9718719-852c-43bd-8e64-8cafcabde7ca','60d4c367-c639-4495-9e04-9de215473b7a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1cf3e403-dadd-4715-86ad-b647d27b2c47','d9718719-852c-43bd-8e64-8cafcabde7ca','d938f228-5967-4e19-b432-34cf16837fb4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b83aa4e8-5f4f-4f8d-ac2c-7b53a7a8ae4d','d9718719-852c-43bd-8e64-8cafcabde7ca','c58bad8a-f744-4672-9e60-3fa199aa0ef5',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eb7f8658-b954-4873-8a5e-c21f909853ce','d9718719-852c-43bd-8e64-8cafcabde7ca','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8f49af07-3164-4d28-87d0-ccbefa9ab969','d9718719-852c-43bd-8e64-8cafcabde7ca','770f3d34-b289-44eb-94fd-7b7bb598181d',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('42fddfd9-21b3-4a64-a92c-ed5d33fdfb03','d9718719-852c-43bd-8e64-8cafcabde7ca','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bbc654ec-5a15-4ae3-abd5-a5254b55c0d7','d9718719-852c-43bd-8e64-8cafcabde7ca','5301f7d1-6703-49fc-a46e-1db0d4b7396d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7801dec4-51b1-4ed9-b58e-8b00e0f89696','d9718719-852c-43bd-8e64-8cafcabde7ca','ce4ea144-6ca0-4f08-978c-d934007390b9',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('37bb9bcf-8124-4b39-bd5f-dd890009abfe','d9718719-852c-43bd-8e64-8cafcabde7ca','d1ad0935-0fe1-4d09-82b5-ea94b6673b66',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aca339f1-26d2-44e5-bcb8-85487e95b4ba','d9718719-852c-43bd-8e64-8cafcabde7ca','4ce6c9e7-38df-48cc-b1cf-ee19a1816867',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4b893270-563c-4806-aca6-a4c12d096603','d9718719-852c-43bd-8e64-8cafcabde7ca','961a5fb0-d012-4660-9a7b-6824fcf09f70',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fbef78ec-d750-41d0-b046-3bfb35b2ea2a','92df7117-d1fa-420a-9771-6d7f54fe5d33','d9718719-852c-43bd-8e64-8cafcabde7ca',1452.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('22fba857-af9f-4e60-92c1-1736da0f17b8','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','d9718719-852c-43bd-8e64-8cafcabde7ca',347.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('be1ebcd6-3f3a-4425-a3ec-061cb4afb8ac','71c34c3c-18da-4745-8b7d-4774800170ec','d9718719-852c-43bd-8e64-8cafcabde7ca',18.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4b0e831f-a405-4dc6-8a9d-be252c1719df','52c2699b-b628-4499-83d4-d478f7f9c902','d9718719-852c-43bd-8e64-8cafcabde7ca',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a9d4f341-f389-4ffb-91f4-2342eced40f7','6631457d-6680-4faa-aa2b-1e7e21d12bd4','d9718719-852c-43bd-8e64-8cafcabde7ca',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('93126239-72b8-4e64-befd-29316c55c6d1','73bba7e2-640f-48da-b681-64d79c2ae9e0','d9718719-852c-43bd-8e64-8cafcabde7ca',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a7326bbe-1995-46fc-85ff-18ca4e6aa7d2','998ed6be-f894-4d11-bde8-22e46900a926','d9718719-852c-43bd-8e64-8cafcabde7ca',17.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('81ae0609-35c3-4a6f-92ac-2e92e89e0f04','1d67d321-d82e-415e-8297-b24427aa46ae','d9718719-852c-43bd-8e64-8cafcabde7ca',67.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2c5c4c31-54f0-4c77-a1d0-a193af88b99e','8239b53c-b2c4-480d-a8fa-2f4660c678be','d9718719-852c-43bd-8e64-8cafcabde7ca',582.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','d9718719-852c-43bd-8e64-8cafcabde7ca');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','d9718719-852c-43bd-8e64-8cafcabde7ca');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('6a430c01-e785-4d7b-ae61-8b4cebf6edd2',N'Salad phô mai dê và quả sung ngọt',N'Sự kết hợp ngọt ngào và mặn mà của quả sung và phô mai dê chắc chắn sẽ làm hài lòng khẩu vị của bạn',10,1,'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/9/19/1094784/Salad---Ngon---1.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('39995f5f-b08c-4685-b490-9ffd2da2e409',1,N'Kết hợp rau xanh, quả sung, phô mai dê và hạnh nhân trong một bát vừa.','','6a430c01-e785-4d7b-ae61-8b4cebf6edd2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aa224a1f-83eb-4687-a282-d9a72ac627cd',2,N'Khuấy dầu, giấm, mật ong, muối và hạt tiêu trước khi ăn','','6a430c01-e785-4d7b-ae61-8b4cebf6edd2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0853e3ba-1d89-40c6-9349-69e7d89abf0b',3,N'Rưới nước sốt lên món salad và trộn.','','6a430c01-e785-4d7b-ae61-8b4cebf6edd2');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8e0943c4-ec2d-46c9-bf76-84118e1bbf35','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','1135f1d1-d822-4b2e-88ac-d73f1831b271',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b857a05d-a23e-4786-89e4-2c0f57d446ab','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','436cf8d5-72af-4f54-9fbf-3588058f6b1a',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('53dcada0-7dd9-4853-8639-b4ecf277f782','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','86d13dcd-6a4d-4118-ba78-f97eeb36306f',30.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4c339429-a94a-4ac5-9584-096b673871d6','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','f4867f34-9069-4b2c-996b-0bc2332cdd5d',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b51dd439-569f-4dc9-94ab-b7e39617aee6','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','60d4c367-c639-4495-9e04-9de215473b7a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1ce45751-44b0-4656-bee8-49e6296a3668','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','4979b2d8-17b3-49bd-b4ae-809bad62bc57',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('788680ea-f783-451f-b490-7a8c4be6b0c6','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','5910feab-2f62-4229-bb39-29e3aa451a96',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8c3e8891-992b-40e0-a72d-bca07f2e4d45','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('76bf9c3d-d05c-47dd-a5eb-4c4a3c9e0f87','6a430c01-e785-4d7b-ae61-8b4cebf6edd2','001bb2b0-6b4f-4ad4-8f99-79ef8dd1e279',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b708c966-f83a-4d4c-abb4-5c2da975e714','92df7117-d1fa-420a-9771-6d7f54fe5d33','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',1423.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7c674e31-c6c3-4cf7-a209-2f6f1633c53b','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',340.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('75179ea4-a13a-4e76-8456-38c4043dfc6e','71c34c3c-18da-4745-8b7d-4774800170ec','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',21.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('19aee32a-d32c-4810-b6f4-8cc7e5e54816','52c2699b-b628-4499-83d4-d478f7f9c902','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('007a38b3-e84c-4aae-8fa6-d1ed98c97ffc','6631457d-6680-4faa-aa2b-1e7e21d12bd4','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',22.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('92ca5e4a-5fc7-440b-8cc2-f5fbe19972a4','73bba7e2-640f-48da-b681-64d79c2ae9e0','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('244b466a-9e2f-48e8-b559-256a63f0e3f3','998ed6be-f894-4d11-bde8-22e46900a926','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1a78d96c-e363-4471-823a-824363dea648','1d67d321-d82e-415e-8297-b24427aa46ae','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('15cc7800-b31d-4eaf-bed7-f9e77083af02','8239b53c-b2c4-480d-a8fa-2f4660c678be','6a430c01-e785-4d7b-ae61-8b4cebf6edd2',310.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','6a430c01-e785-4d7b-ae61-8b4cebf6edd2');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','6a430c01-e785-4d7b-ae61-8b4cebf6edd2');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',N'Salad Quinoa Địa Trung Hải',N'Món salad quinoa Địa Trung Hải này chứa đầy rau tươi ướp trong nước sốt, công thức này là một lựa chọn ăn trưa lành mạnh dành cho bạn',45,1,'https://wiki-travel.com.vn/Uploads/picture/myyen97-202207032217-Salad-hy-lap.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6deb2be0-02f1-4674-84b2-196d3a5ae112',1,N'Đánh đều dầu, giấm, oregano, mật ong, Dijon và ớt đỏ nghiền trong một bát lớn.','','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b4da4f9d-68f5-4cb5-aad0-f1202ce88645',2,N'Thêm quinoa, dưa chuột, hành tây, cà chua, ô liu, đậu xanh và 0.5 chén feta. Quăng nhẹ nhàng để kết hợp. Đậy nắp và cho vào tủ lạnh trong 30 phút.','','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d89bc845-03d7-4ec6-ad3f-17f4aa60c1d5',3,N'Thêm rau bina và nhẹ nhàng trộn đều. Rắc 0.5 cốc feta còn lại và dùng ngay.','','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('448c981b-86e0-4a28-8259-0f05cf0a0a91','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','60d4c367-c639-4495-9e04-9de215473b7a',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('82116b04-7215-4025-82e9-626522e87c25','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','bd889820-6039-4277-a14c-a5897e21cb5a',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('04a575b6-0b44-4817-9785-a633ff04f6ba','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','3bbac6cd-1c4e-4481-a0a0-d9bece06ffa3',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ed107101-f5a0-465c-a0b4-d0b60bd72b01','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','5910feab-2f62-4229-bb39-29e3aa451a96',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6bd2ada4-0fcd-4f52-9a9e-ce7c99940014','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','638274c7-a8bb-4d20-a3b3-766ad92a9dde',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bdb9a634-80c6-455f-841b-308212e2c594','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','6c446e73-566c-441c-9088-6dac8acb86f1',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6a3778c1-49dd-4d59-bf5b-8d9af3bc5605','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','a6e586f5-3370-4062-993b-59365fc8397d',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('591fed5b-5406-4e19-b9c3-d4c283f3c445','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','a610d85d-4c04-46d3-a67b-4320f0c03fba',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('82a21f59-992e-4ff7-8c36-2a16cb505472','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','d1ad0935-0fe1-4d09-82b5-ea94b6673b66',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8e9927ef-36e5-465e-a20c-8e9854c5a40e','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','770f3d34-b289-44eb-94fd-7b7bb598181d',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('afa17c3f-dc9a-4cd9-8df9-5832ac457b15','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','7e22c6f5-11b7-40fb-9950-d43fbe1c0850',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('75816c7e-ff99-4d96-9da0-60eba46ac2d0','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','cb958a51-cb6a-4cff-b7bc-d78de47bcbe4',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ede5b279-be6b-4408-ae63-5780776100a4','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','25e8ca30-60af-4281-b32a-48e2f3418680',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5fe59ef8-3ca5-4a65-8c8d-78646b925fde','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','ce4ea144-6ca0-4f08-978c-d934007390b9',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9ccd02f2-ccde-45e3-8d6d-eecee19df3bc','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc','a26668d2-4f45-4e80-80c1-6586f64e55e7',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cfc496a1-dd95-4d3b-b182-7ad01c842bbc','92df7117-d1fa-420a-9771-6d7f54fe5d33','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',1975.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4ca2039d-8851-4019-bd5a-0eca4f404f78','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',472.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('76cdbdb5-1753-4f0a-b34c-2959d17e87f5','71c34c3c-18da-4745-8b7d-4774800170ec','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('412fc6d3-47e5-41ef-95ab-ff5393bb5f3e','52c2699b-b628-4499-83d4-d478f7f9c902','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('32c8a269-3d93-47ac-8ebe-9549a9e74e50','6631457d-6680-4faa-aa2b-1e7e21d12bd4','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d6b4089c-25aa-4533-a567-724d34ac24fa','73bba7e2-640f-48da-b681-64d79c2ae9e0','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7b83e6e6-7d7b-42f6-b795-4d19c568bcfb','998ed6be-f894-4d11-bde8-22e46900a926','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f0c58d7a-1e96-4da5-ba75-0381d3aa2b8b','1d67d321-d82e-415e-8297-b24427aa46ae','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('22c738f9-5ecb-48e8-9b4a-cda7996c692d','8239b53c-b2c4-480d-a8fa-2f4660c678be','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc',609.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','b0864f6d-5e7a-45ed-834e-7a2ee6ee4ccc');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('58f826a0-d8f8-4078-9a3f-9fc535903f48',N'Xà lách trộn mù tạt Tangy',N'Món salad kem, giòn này kết hợp với bánh mì kẹp thịt hoặc bánh mì kẹp cá. Thêm một chút nước sốt nóng vào hỗn hợp mù tạt để tăng thêm độ cay',40,2,'https://www.eatingwell.com/thmb/7xOAC9QsoHI6oN2Z6qkgbtkiJQ4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/mustard-coleslaw-ck-1809093-x-af309d19c5c04e72ae593831bb06326a.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d8c2e27e-9e3b-435d-a549-94f6f7448705',1,N'Kết hợp bắp cải, hành tây và 1 chén cà rốt trong một bát lớn.','','58f826a0-d8f8-4078-9a3f-9fc535903f48');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('80afa60a-b156-40bc-81e0-f86a96f8c3c2',2,N'Trộn giấm rượu vang trắng, đường, mù tạt, sốt mayonnaise, muối, tiêu đen và tiêu đỏ trong một bát nhỏ; khuấy đều bằng máy đánh trứng.','','58f826a0-d8f8-4078-9a3f-9fc535903f48');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7e4868d2-83cb-4ab6-8c2b-458556776e9e',3,N'Thêm hỗn hợp mù tạt vào hỗn hợp bắp cải và trộn đều.','','58f826a0-d8f8-4078-9a3f-9fc535903f48');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ed5ef677-f39b-4701-8ad4-ce2757d5158d',4,N'Đậy nắp và làm lạnh trong 20 phút. Khuấy trước khi phục vụ.','','58f826a0-d8f8-4078-9a3f-9fc535903f48');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3ed18eb0-74ab-4c2a-98df-b86e724e7465','58f826a0-d8f8-4078-9a3f-9fc535903f48','596b6db3-5ca6-4a44-ad9f-1adb80054408',7.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e917b4ec-1d3f-441a-ac65-0511e955d80f','58f826a0-d8f8-4078-9a3f-9fc535903f48','d1ad0935-0fe1-4d09-82b5-ea94b6673b66',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4246c87f-42e4-4858-a6d8-d7386317fe68','58f826a0-d8f8-4078-9a3f-9fc535903f48','b3ef6d49-ec64-43f9-b1db-efa920adb4db',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2d85e541-a4ef-4dd2-8e9c-0856cfd31550','58f826a0-d8f8-4078-9a3f-9fc535903f48','1480cf04-7737-477e-ab53-fb7706420995',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('80a1fc0e-b637-4127-9a9a-955628388b8b','58f826a0-d8f8-4078-9a3f-9fc535903f48','bc4f0475-7cb3-4764-86ed-d1b0c2430810',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('882b7ae4-e136-4354-9c9b-f916f3f09b27','58f826a0-d8f8-4078-9a3f-9fc535903f48','511142c2-41c3-4cdf-b8f7-3b4207c68abe',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d02f98d6-0742-409e-94a0-e8f2366f4615','58f826a0-d8f8-4078-9a3f-9fc535903f48','692938d0-e603-4d02-b905-21b2a85d2ff5',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aa5668ff-5134-4210-99b3-61452d2bb865','58f826a0-d8f8-4078-9a3f-9fc535903f48','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('46b99a43-b3c2-4de7-9bd9-9da139f363e9','58f826a0-d8f8-4078-9a3f-9fc535903f48','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.125,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3b47e84b-f4e4-4f0f-b65b-04ad361e2877','58f826a0-d8f8-4078-9a3f-9fc535903f48','ace11f0d-fdac-4053-9ac9-f5c173d6c41b',0.125,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('14c74f71-117d-422e-a7ea-94044570db1d','92df7117-d1fa-420a-9771-6d7f54fe5d33','58f826a0-d8f8-4078-9a3f-9fc535903f48',243.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e65f0936-1343-40a2-8400-f5ffd65c6e64','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','58f826a0-d8f8-4078-9a3f-9fc535903f48',58.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('19d498fd-ee33-45e3-bc4f-0876aa19325c','71c34c3c-18da-4745-8b7d-4774800170ec','58f826a0-d8f8-4078-9a3f-9fc535903f48',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3d79441a-1ef6-439c-9874-00adba8e7c43','52c2699b-b628-4499-83d4-d478f7f9c902','58f826a0-d8f8-4078-9a3f-9fc535903f48',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a7a7da71-3f81-4159-9dd7-17bd9f64efa4','6631457d-6680-4faa-aa2b-1e7e21d12bd4','58f826a0-d8f8-4078-9a3f-9fc535903f48',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7a48354d-6199-47eb-af58-802adaadd0cc','73bba7e2-640f-48da-b681-64d79c2ae9e0','58f826a0-d8f8-4078-9a3f-9fc535903f48',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('53f9bd56-d13e-41f8-9102-2eb4f4313e0a','998ed6be-f894-4d11-bde8-22e46900a926','58f826a0-d8f8-4078-9a3f-9fc535903f48',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('053168cc-9e54-4a9c-a0d7-debd7bf00cd2','1d67d321-d82e-415e-8297-b24427aa46ae','58f826a0-d8f8-4078-9a3f-9fc535903f48',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('219c5700-3123-4fd9-9e49-0267172006c8','8239b53c-b2c4-480d-a8fa-2f4660c678be','58f826a0-d8f8-4078-9a3f-9fc535903f48',172.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','58f826a0-d8f8-4078-9a3f-9fc535903f48');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','58f826a0-d8f8-4078-9a3f-9fc535903f48');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('e6923403-a0bc-404b-80d8-e70ea727bd8c',N'Salad đậu với sốt Herbed Tahini',N'Sự biến tấu sôi động của món salad cổ điển này sử dụng đậu xanh tươi và tahini, bổ dưỡng cùng với rất nhiều loại thảo mộc mà bạn có thể sử dụng tuỳ theo sở thích của bạn để tạo nên hương vị độc đáo từ công thức này',20,2,'https://www.eatingwell.com/thmb/5RT2V7JjIz0pJOT8C3X8FZrW-ts=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/4BeanSaladwithHerbedTahiniDressing-RM-7346-3769178a98654fff9c62ec2d5e74f693.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('172b5787-2c89-4892-a4ba-aa781829055a',1,N'Đánh bơ tahini, nước cốt chanh, mật ong, mù tạt, tỏi, muối và hạt tiêu trong một bát lớn cho đến khi mịn.','','e6923403-a0bc-404b-80d8-e70ea727bd8c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dd4b80a5-9755-433b-9502-003f83ec1979',2,N'Cho dầu vào trong dầu trong khi đánh trứng. Khuấy trong các loại thảo mộc.','','e6923403-a0bc-404b-80d8-e70ea727bd8c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('86ddcb6f-3646-4077-88ac-a27dd60cd254',3,N'Thêm đậu xanh, đậu tây, đậu xanh, edamame, cần tây, hành tây và ớt chuông. Phủ đều lên hỗn hợp.','','e6923403-a0bc-404b-80d8-e70ea727bd8c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('de337f7f-468a-4cfd-8539-229f9a595552',4,N'Rắc hạt mè, nếu muốn.','','e6923403-a0bc-404b-80d8-e70ea727bd8c');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('67002252-4aea-439d-a3cd-0a88451507e6','e6923403-a0bc-404b-80d8-e70ea727bd8c','9f2bb50f-02de-4bd2-bcb9-112597ecec4c',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('af0f6244-1e76-4125-8bee-0bf1e8d1f2cb','e6923403-a0bc-404b-80d8-e70ea727bd8c','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4997c344-77b2-4341-8d04-2f9faf2a55a1','e6923403-a0bc-404b-80d8-e70ea727bd8c','5910feab-2f62-4229-bb39-29e3aa451a96',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6468cead-da76-429d-bb53-255c73fcf5a7','e6923403-a0bc-404b-80d8-e70ea727bd8c','638274c7-a8bb-4d20-a3b3-766ad92a9dde',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2330ab20-167f-40a0-8d1c-5d211d40c2b9','e6923403-a0bc-404b-80d8-e70ea727bd8c','d938f228-5967-4e19-b432-34cf16837fb4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5d178a23-4f46-4646-9d1e-5c40a1edd8d7','e6923403-a0bc-404b-80d8-e70ea727bd8c','e41475bc-ef90-4ac7-95d0-017c9da58216',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c19f84d2-b6b1-4aca-929a-1ed491038d9d','e6923403-a0bc-404b-80d8-e70ea727bd8c','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fa61c610-193f-4d75-8263-affdb2ebe1d6','e6923403-a0bc-404b-80d8-e70ea727bd8c','60d4c367-c639-4495-9e04-9de215473b7a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5f6c4339-bbb7-4b05-8af1-91566c45625e','e6923403-a0bc-404b-80d8-e70ea727bd8c','e5d6c8f9-0812-470f-9b00-2b25dd5cdfab',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('01a3e863-0101-48df-aac5-a8fe778d0ac8','e6923403-a0bc-404b-80d8-e70ea727bd8c','25e8ca30-60af-4281-b32a-48e2f3418680',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b1d00074-e9e1-489f-849c-e440dd45df82','e6923403-a0bc-404b-80d8-e70ea727bd8c','f03f7bb1-2e19-4cbf-ba6d-256e7866c9d5',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0d839f4c-21c6-4ad7-8fdf-444f898cced8','92df7117-d1fa-420a-9771-6d7f54fe5d33','e6923403-a0bc-404b-80d8-e70ea727bd8c',1029.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('14eccc19-bcbb-41f9-a0cb-d00262aa8bce','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','e6923403-a0bc-404b-80d8-e70ea727bd8c',246.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a2da169e-43fb-4a34-b0c6-74c059d18e47','71c34c3c-18da-4745-8b7d-4774800170ec','e6923403-a0bc-404b-80d8-e70ea727bd8c',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('790b9883-8e83-426c-81d2-d23d6e5049c2','52c2699b-b628-4499-83d4-d478f7f9c902','e6923403-a0bc-404b-80d8-e70ea727bd8c',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8f902170-502d-499e-8f17-0fa14de95af5','6631457d-6680-4faa-aa2b-1e7e21d12bd4','e6923403-a0bc-404b-80d8-e70ea727bd8c',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cd8113f2-c33a-48f9-8d22-e33d86e8d944','73bba7e2-640f-48da-b681-64d79c2ae9e0','e6923403-a0bc-404b-80d8-e70ea727bd8c',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('128680c0-5bbc-4175-a343-5b8f05d8d62f','998ed6be-f894-4d11-bde8-22e46900a926','e6923403-a0bc-404b-80d8-e70ea727bd8c',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8dcdb29d-6153-4ae3-b70f-a2b01ea38b7e','1d67d321-d82e-415e-8297-b24427aa46ae','e6923403-a0bc-404b-80d8-e70ea727bd8c',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('26f05eb5-65a3-4d5d-b089-a838ad5891a6','8239b53c-b2c4-480d-a8fa-2f4660c678be','e6923403-a0bc-404b-80d8-e70ea727bd8c',340.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','e6923403-a0bc-404b-80d8-e70ea727bd8c');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','e6923403-a0bc-404b-80d8-e70ea727bd8c');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('e82d0bdb-a34d-471a-bf1f-da4f98cde160',N'Salad Tây Nam của McDonalds',N'Nếu bạn hâm mộ món salad Tây Nam của McDonalds thì công thức sao chép này sẽ mang tất cả trở lại với một vài biến tấu lành mạnh',25,2,'https://phunuvietnam.mediacdn.vn/thumb_w/600/media/news/a13a06978e18f0c27ffdcd3fe419a1c4/thumb/gan-400-nguoi-my-bi-nhiem-khuan-duong-ruot-do-an-salad-cua-hang-mcdonalds-salad-mcdonalds-nhiem-khuan-3a-thumb43.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4f636134-4e97-4cae-a62b-fe2e9ee9ecad',1,N'Đánh kem chua, salsa, nước cốt chanh, thì là, bột tỏi, bột hành, muối và hạt tiêu với nhau trong một bát lớn.','','e82d0bdb-a34d-471a-bf1f-da4f98cde160');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('de57f1d1-592d-4d24-b8d0-1e7aebb0d18b',2,N'Thêm rau diếp, cà chua, thịt gà, ngô, đậu đen và hành tây; quăng để áo khoác tốt.','','e82d0bdb-a34d-471a-bf1f-da4f98cde160');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4ef8f0af-490e-4fe7-a5e5-85b3a2c005a2',3,N'Chia 4 đĩa và rắc phô mai.','','e82d0bdb-a34d-471a-bf1f-da4f98cde160');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9c66444d-e589-4969-bad4-59fc203dc7dd',4,N'Ăn kèm với chanh, nếu muốn.','','e82d0bdb-a34d-471a-bf1f-da4f98cde160');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('27f5ccbc-65d2-43b3-8d5e-101d9deb0ba2','e82d0bdb-a34d-471a-bf1f-da4f98cde160','bbc957a9-f61c-4b89-a80e-2cbbf7fb2270',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('96831855-21f9-4305-afa1-90821dcec350','e82d0bdb-a34d-471a-bf1f-da4f98cde160','6abb0633-fa37-454f-a763-23dd057fdfdd',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b259eb57-6b77-4175-9c0f-135423f0773d','e82d0bdb-a34d-471a-bf1f-da4f98cde160','43a88cd0-9cbf-4ee5-8835-2b8002f3bb7c',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7cd9b7f2-8c1e-4c88-bdf3-331d97bdb2f5','e82d0bdb-a34d-471a-bf1f-da4f98cde160','8bc2ef55-001a-4e2f-8e60-854c255ceb2a',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2a3bf351-5930-44f1-9383-60c15400526d','e82d0bdb-a34d-471a-bf1f-da4f98cde160','526fcaa9-3fb4-4ee9-8e5b-27e09ca72412',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7dfdc884-1f32-44bd-b5f6-73f0616171d1','e82d0bdb-a34d-471a-bf1f-da4f98cde160','bf45184b-c8cf-4f77-b5f0-b09952a5f5b6',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2b12c056-31c2-42f7-bf3c-1baf4f381777','e82d0bdb-a34d-471a-bf1f-da4f98cde160','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('413d5483-6379-4364-b162-afb4c0a8f888','e82d0bdb-a34d-471a-bf1f-da4f98cde160','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('af79c4e0-526d-4195-87b9-32312010b915','e82d0bdb-a34d-471a-bf1f-da4f98cde160','1135f1d1-d822-4b2e-88ac-d73f1831b271',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cf56bcb8-a02a-4765-93f3-58751c18481a','e82d0bdb-a34d-471a-bf1f-da4f98cde160','5a9fd653-e5d3-4b23-9ae5-9cd27c0c7fab',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6355fe92-daad-4b04-94cc-c17b5ca7eb34','e82d0bdb-a34d-471a-bf1f-da4f98cde160','23a5a8c3-aa75-419a-a78a-cadd93eac7e8',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4bdbb0bb-4930-4ab5-8292-bd3db3f1862e','e82d0bdb-a34d-471a-bf1f-da4f98cde160','d0ea8f73-92fa-4573-8a67-c65a15238902',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('660a5b19-5731-4dfc-8787-07226b80c34e','e82d0bdb-a34d-471a-bf1f-da4f98cde160','e96fcd1e-7b8f-4f58-aa72-ab890f2f65fa',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('58bfdb8c-6563-4c32-b543-fc4acf9f032e','e82d0bdb-a34d-471a-bf1f-da4f98cde160','a3fe9955-6f41-4d1b-8387-80a92380dfa5',0.67,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('56fdacc3-1232-4108-a886-30a82ff0e9e0','e82d0bdb-a34d-471a-bf1f-da4f98cde160','9b515b95-6af6-4bd5-8074-69f9f7c0868d',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2fa11230-b393-4ea0-a473-67712f9bfc2e','92df7117-d1fa-420a-9771-6d7f54fe5d33','e82d0bdb-a34d-471a-bf1f-da4f98cde160',1159.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b7ad970e-86c6-4ea0-90cd-12684fbaf062','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','e82d0bdb-a34d-471a-bf1f-da4f98cde160',277.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('045f62c5-8a38-4bcd-a352-d834d05c1efd','71c34c3c-18da-4745-8b7d-4774800170ec','e82d0bdb-a34d-471a-bf1f-da4f98cde160',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cc726dfc-46dd-4231-b799-d5189ca47b1f','52c2699b-b628-4499-83d4-d478f7f9c902','e82d0bdb-a34d-471a-bf1f-da4f98cde160',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2251b304-c4e0-4590-b909-2f646f80784c','6631457d-6680-4faa-aa2b-1e7e21d12bd4','e82d0bdb-a34d-471a-bf1f-da4f98cde160',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1f34ff98-b5cd-4d21-be2a-69c9564c54ec','73bba7e2-640f-48da-b681-64d79c2ae9e0','e82d0bdb-a34d-471a-bf1f-da4f98cde160',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('630b5f97-717c-44c8-9f60-9456398da167','998ed6be-f894-4d11-bde8-22e46900a926','e82d0bdb-a34d-471a-bf1f-da4f98cde160',26.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6043c820-16a6-4813-9ec4-125643c88fed','1d67d321-d82e-415e-8297-b24427aa46ae','e82d0bdb-a34d-471a-bf1f-da4f98cde160',66.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('92113da9-7012-47ce-8121-33fdd0d54fe7','8239b53c-b2c4-480d-a8fa-2f4660c678be','e82d0bdb-a34d-471a-bf1f-da4f98cde160',417.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','e82d0bdb-a34d-471a-bf1f-da4f98cde160');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','e82d0bdb-a34d-471a-bf1f-da4f98cde160');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('8640e231-59e7-4c54-865e-299d5e3499d3',N'Đậu hũ và salad cải xoong xoài và bơ',N'Món ăn này là một bữa ăn tươi, có nguồn gốc từ thực vật, hoàn hảo khi bạn muốn một thứ gì đó thịnh soạn nhưng đang muốn cắt giảm thịt.',20,1,'https://img-global.cpcdn.com/recipes/1565a04e53db80a9/680x482cq70/salat-bo-va-c%E1%BA%A3i-xoong-recipe-main-photo.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2ce939fe-edbe-4435-bc38-e18c139b550c',1,N'Đánh đều dầu, giấm, mật ong, mù tạt, muối và hạt tiêu trong một bát nhỏ.','','8640e231-59e7-4c54-865e-299d5e3499d3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('78b73ea4-4f4c-4bb7-a16e-c4e2b4f10e48',2,N'Xếp cải xoong, đậu phụ, bơ, xoài, ớt chuông, hành tây và củ cải vào 4 bát.','','8640e231-59e7-4c54-865e-299d5e3499d3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0c853095-c03a-453e-99d4-ff437c03c051',3,N'Phục vụ với nước xốt và rắc ngò và hạt vừng.','','8640e231-59e7-4c54-865e-299d5e3499d3');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1a8b5511-7434-457b-82cd-84c159afa157','8640e231-59e7-4c54-865e-299d5e3499d3','60d4c367-c639-4495-9e04-9de215473b7a',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f8d77185-128e-4dbb-9030-4b504d42f1a2','8640e231-59e7-4c54-865e-299d5e3499d3','bd889820-6039-4277-a14c-a5897e21cb5a',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e6c05554-fe35-456f-817c-366a57c180b0','8640e231-59e7-4c54-865e-299d5e3499d3','5910feab-2f62-4229-bb39-29e3aa451a96',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('79b27510-0458-4f7d-a3e4-ba0d52684579','8640e231-59e7-4c54-865e-299d5e3499d3','638274c7-a8bb-4d20-a3b3-766ad92a9dde',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4dbeb3e2-efd3-4cda-b027-c80c9bdacbd0','8640e231-59e7-4c54-865e-299d5e3499d3','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ce9520d8-43b7-4b55-8683-b4af2edb34d7','8640e231-59e7-4c54-865e-299d5e3499d3','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0359bb40-faa5-460d-958d-d048cf91d767','8640e231-59e7-4c54-865e-299d5e3499d3','23734b23-e343-4da4-9229-d6a3139afc7f',8.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('65db0485-ba41-41ce-ad70-aca0b7b56431','8640e231-59e7-4c54-865e-299d5e3499d3','b068cb3c-bf42-49f7-836e-db768d73cd8b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('face08a2-b08b-4519-b9dd-a4a64f8d086e','8640e231-59e7-4c54-865e-299d5e3499d3','b4e0104f-e719-4e89-93f1-7a6d6992d368',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('94892d77-1355-46a6-b27d-76253b2d6c9f','8640e231-59e7-4c54-865e-299d5e3499d3','5479df71-16f6-4057-b7f4-bfa0880300e7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4d701762-19a0-485a-9243-895b13fbbf77','8640e231-59e7-4c54-865e-299d5e3499d3','55ee1a92-e916-4f7c-9d57-f64f8d274da7',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eb6d4fa0-e73c-4687-b867-c50ea94920f9','8640e231-59e7-4c54-865e-299d5e3499d3','d1ad0935-0fe1-4d09-82b5-ea94b6673b66',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7dec68fe-1b57-4524-a09a-32b943432e8a','92df7117-d1fa-420a-9771-6d7f54fe5d33','8640e231-59e7-4c54-865e-299d5e3499d3',1289.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('eec36e1b-9431-4dbe-ac4b-3adfd7bd879d','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','8640e231-59e7-4c54-865e-299d5e3499d3',308.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3629cdbd-5f57-4165-b685-18abaa79d288','71c34c3c-18da-4745-8b7d-4774800170ec','8640e231-59e7-4c54-865e-299d5e3499d3',24.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f4dde0b7-895f-4ec4-bd11-fbccb72a4524','52c2699b-b628-4499-83d4-d478f7f9c902','8640e231-59e7-4c54-865e-299d5e3499d3',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('886d771d-74e9-4a27-a1e3-6c4bb17d9539','6631457d-6680-4faa-aa2b-1e7e21d12bd4','8640e231-59e7-4c54-865e-299d5e3499d3',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c98e5070-0261-4958-8c5f-83bb0f14ef5c','73bba7e2-640f-48da-b681-64d79c2ae9e0','8640e231-59e7-4c54-865e-299d5e3499d3',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5d7c74b8-0b08-4e92-bbff-79dab90f2eee','998ed6be-f894-4d11-bde8-22e46900a926','8640e231-59e7-4c54-865e-299d5e3499d3',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d168b6b7-058a-4ce1-a0bc-16adb9fc5438','1d67d321-d82e-415e-8297-b24427aa46ae','8640e231-59e7-4c54-865e-299d5e3499d3',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0aa64dfd-bcb4-424b-8832-37920dd41d4f','8239b53c-b2c4-480d-a8fa-2f4660c678be','8640e231-59e7-4c54-865e-299d5e3499d3',480.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','8640e231-59e7-4c54-865e-299d5e3499d3');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','8640e231-59e7-4c54-865e-299d5e3499d3');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('fc9d9eaf-8596-4ec4-a9b1-069256b862cd',N'Salad phô mai steak',N'Lấy cảm hứng từ món bít tết phô mai Philly, món salad này mang hương vị của món ăn cổ điển Bờ Đông. Thêm nước sốt Worrouershire, nước sốt sẽ khiến món ăn có vị ngon hơn nữa.',20,2,'https://cdn.tgdd.vn/2021/05/CookRecipe/GalleryStep/thanh-pham-502.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('53ade405-6ec8-415d-86ca-b9787590bb7e',1,N'Thấm khô bít tết và nêm cả hai mặt với 0.25 thìa cà phê muối và hạt tiêu.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c50baf2c-c450-4dba-99e4-f6d69305c965',2,N'Đun nóng 1 muỗng canh dầu trong chảo lớn trên lửa vừa và cao.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('41b70e58-4e0c-410d-a9c2-4961909d8c63',3,N'Thêm bít tết và nấu, lật một lần, cho đến khi nhiệt kế đọc tức thời được lắp vào phần dày nhất ghi 125°F cho nhiệt độ vừa-chín, 4 đến 5 phút mỗi bên.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d2ec1792-ce57-4294-990a-e600c4394f27',4,N'Chuyển sang thớt, phủ pho mát lên trên và để yên trong 5 phút trước khi cắt theo thớ.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0cf88f11-bea8-49fc-8bcd-d3a68ee1607f',5,N'Trong khi đó, thêm hành tây vào chảo và nấu, thỉnh thoảng khuấy, cho đến khi có màu nâu nhạt, khoảng 5 phút.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c21cf6cd-53d6-440b-9ea4-228c7c4385ea',6,N'Đánh đều giấm, Worcestershire, mù tạt, lá oregano, tỏi và 0.25 thìa cà phê còn lại mỗi loại muối và hạt tiêu trong một bát lớn.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c71c8418-e23c-4877-aab0-a36f444685d9',7,N'Từ từ cho 2 muỗng canh dầu còn lại và bất kỳ miếng bít tết nhỏ giọt nào vào. 
','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e32a1b65-a9b5-46d1-8444-50afc29ccee3',8,N'Thêm rau bina và ớt và quăng lên áo khoác.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cb3b1da3-c881-444d-97c3-4b08b6f5e74b',9,N'Phục vụ món salad với hành tây và bít tết.','','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2af32c1b-860d-4950-ab8e-628b93a8671f','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','525d2b50-6015-4cb8-b162-c508e24f5e72',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('26030118-8a3a-4054-899d-c3c051e3a04d','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ef210c3f-bfaf-40b6-b28f-478606b10616','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0bb9eabd-8e9f-43b9-9d83-7d3c1c88f768','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','60d4c367-c639-4495-9e04-9de215473b7a',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('184a4c0b-0406-484e-a129-d2a077a2461d','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','d7951c4e-80d0-4901-93d8-43ef539db03f',60.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('74ef9de8-a634-4aab-96c5-4d0fdcc29822','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','20698ed3-9cd9-49b3-bab5-bf33d5e8a967',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('14894430-135f-48ba-b2b4-6567bb9b0348','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','00034f24-529b-4182-865e-7282b36852ba',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f47becfa-c406-4968-8274-943cdc38c074','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','638274c7-a8bb-4d20-a3b3-766ad92a9dde',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9518260a-2a0b-4a20-a679-277b852fb1e6','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','c58bad8a-f744-4672-9e60-3fa199aa0ef5',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d10b8ad0-db32-4728-9f12-b18e396ef768','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','d938f228-5967-4e19-b432-34cf16837fb4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('38a04c43-d472-4a90-8899-ba4d60527398','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','a26668d2-4f45-4e80-80c1-6586f64e55e7',300.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fdb4dc33-d3a9-48af-974f-819e146bfff7','fc9d9eaf-8596-4ec4-a9b1-069256b862cd','0787130c-4149-4a2a-86c6-2aa16586e4dd',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('99188825-3b91-492f-8f87-d8bb0ac9dd53','92df7117-d1fa-420a-9771-6d7f54fe5d33','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',1430.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('107b3eb1-c182-4f99-a125-3fa3a3b12e0b','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',342.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7ac70414-9855-4570-80cd-458ee155891d','71c34c3c-18da-4745-8b7d-4774800170ec','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('15883b4a-ddca-4eb8-80ec-b6e66d1815d4','52c2699b-b628-4499-83d4-d478f7f9c902','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7f00f85a-ef9b-4518-903e-953e8e72b346','6631457d-6680-4faa-aa2b-1e7e21d12bd4','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('37edf9af-0946-4ec1-86c0-1509a47290ad','73bba7e2-640f-48da-b681-64d79c2ae9e0','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4dbc8c56-2f0b-493d-a458-84c4ac849bcf','998ed6be-f894-4d11-bde8-22e46900a926','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',29.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('769b7b3c-465f-4d9b-bbe3-3441abc98aac','1d67d321-d82e-415e-8297-b24427aa46ae','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',69.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('98fdc589-b670-4d5a-9405-eb806cf6b511','8239b53c-b2c4-480d-a8fa-2f4660c678be','fc9d9eaf-8596-4ec4-a9b1-069256b862cd',726.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','fc9d9eaf-8596-4ec4-a9b1-069256b862cd');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',N'Salad rau đắng với củ cải đường và cam',N'Món ăn săn chắc như ngọc này thay thế cà chua bằng củ cải đường và cam cùng húng quế cho argula cay và radicchio.',105,2,'https://afamilycdn.com/150157425591193600/2021/6/28/19570191922758182358822985860084141913501992n-16248541689431202557484.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2e5d258f-62a5-4e00-bdce-39d0ec01dbcd',1,N'Làm nóng lò ở nhiệt độ 375°F.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1bf876d4-d2f0-4bed-b034-341ae26bd536',2,N'Bọc từng củ cải trong giấy bạc.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7f4c5013-1666-4725-b6bb-61ac7282bf33',3,N'Đặt trên một tấm nướng bánh.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('00f79104-39ca-4d55-b401-a1ef3a9cda94',4,N'Nướng cho đến khi mềm, khoảng 1 tiếng rưỡi. Để nguội, vẫn còn bọc, trong ít nhất 30 phút.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cb1be077-bfba-45ad-9caf-ba5b7e799bfe',5,N'Mở gói củ cải đường, cắt và lột bỏ lớp vỏ của chúng.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6f15507f-e404-4a60-8fe7-ad90542ea309',6,N'Cắt mỗi củ cải đường thành 8 lát hoặc nêm.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fde7d71d-edc0-4358-b5ec-da9ca02ed077',7,N'Trong khi đó, kết hợp 0.5 chén dầu, giấm, nước cam cô đặc, muối và hạt tiêu trong một bát lớn.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('def350c1-b99b-4c7b-95f6-2a02811aef0b',8,N'Nạo 0.5 thìa cà phê vỏ cam, thêm vào bát và đánh cho đến khi hòa quyện. .','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4120b66b-e430-4775-956a-8f408d2ac04a',9,N'Dự trữ 0.5 chén nước sốt cho mưa phùn. Để qua một bên','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('82df456a-f1c7-4106-865c-36386eeaeff8',10,N'Cắt đầu cam. Đứng trên một mặt phẳng và cắt bỏ hết vỏ và cùi. Cắt ngang từng quả cam thành 8 lát.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('835c55d8-5e5c-4450-b094-31d0ad3b2fe1',11,N'Đun nóng 1 muỗng canh dầu còn lại trong chảo vừa trên lửa vừa.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9bd4cc14-ab84-48d0-bd80-6a949eaf8130',12,N'Thêm panko và nấu, khuấy đều, cho đến khi có màu vàng nhạt, khoảng 2 phút. Loại bỏ nhiệt.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dcc85c6d-67df-4a96-ac1c-39356c59fb22',13,N'Thêm rau arugula và radicchio vào bát lớn với nước sốt; ném để áo khoác.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ee33293b-b98d-4887-88f4-e6120b1d0a1f',14,N'Sắp xếp củ cải đường, cam và mozzarella trên đĩa.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fdcd0721-6d50-4ce0-b24d-846e737c824c',15,N'Đặt rau xanh ở giữa và rắc vụn bánh mì.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e4cfcb7e-6937-428b-bd20-f5a00112d2ad',16,N'Rưới 0.5 chén nước sốt dành riêng lên món salad ngay trước khi ăn.','','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1a473995-b400-43ef-b41c-8a81d721c351','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','31c71e81-862d-4e38-95fd-9ac6dbe324f2',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7236a3a3-7cec-46a7-a0a5-773bfabf4005','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','60d4c367-c639-4495-9e04-9de215473b7a',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4740c41e-4943-4f33-a1f8-e8e581584b2b','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','4979b2d8-17b3-49bd-b4ae-809bad62bc57',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('00ad8254-4038-4a9f-a1e0-c01608667331','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','33dfff03-0ee3-4a12-8ea5-b7b3007e13aa',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('536ef0ad-5696-4e1c-b138-a8c31e5431de','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4336e85e-9290-4b81-8ec6-56e283f38ce4','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fc66015d-9f06-4e19-a5d7-007379811401','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','0b4528b8-7c0c-4c39-a6e2-097165869c04',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ec15ca34-7481-4d92-84b2-146fff38b48b','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','ffe15916-3813-49d2-b0cb-834de57f2f4c',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5c6bd182-86a8-491c-b8f4-b914e8037e1d','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','539766e0-658e-4a99-bb90-c16c5ae8626b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a7c3f0c6-6fd6-4ab6-a5cc-0bf65a8ba968','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','1f5fbb6a-19e7-42c9-8c23-f3e62d3263ed',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4526285c-dabb-46f5-a4bd-07b05c2ea3c0','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279','df2b4b45-dd91-42d9-948c-6e1ab591408a',240.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bcad16d4-c718-4094-a068-c9575a6306da','92df7117-d1fa-420a-9771-6d7f54fe5d33','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',2092.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6a294e56-b6a8-4949-a28f-04937d94a824','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',500.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6a435ccb-0b75-46df-bf67-f8ee8a5b1b83','71c34c3c-18da-4745-8b7d-4774800170ec','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('890b6f03-cf5d-45e5-890f-5b44ab5ac256','52c2699b-b628-4499-83d4-d478f7f9c902','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('120bd961-cdd3-4b20-9489-67dc3ec3053a','6631457d-6680-4faa-aa2b-1e7e21d12bd4','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a8300a01-ddad-4e41-8db8-7645d3ca410e','73bba7e2-640f-48da-b681-64d79c2ae9e0','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('835ed295-f7f6-4f70-84c4-83f9298182ad','998ed6be-f894-4d11-bde8-22e46900a926','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('350857b0-03d8-4016-aa18-1c0da0d0a479','1d67d321-d82e-415e-8297-b24427aa46ae','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',47.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3ef71c60-5a7c-4c7d-9247-5826f460d200','8239b53c-b2c4-480d-a8fa-2f4660c678be','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279',391.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','a8c948c6-bb8e-4d6f-a9ed-a5de56f0d279');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',N'Salad củ dền và phô mai dê',N'Món salad tuyệt đẹp mùa đông này có hương vị ngọt ngào từ củ cải đường nướng và giấm balsamic. Phô mai dê kem và rau arugula cay tạo thêm màu sắc và sự cân bằng, trong khi quả óc chó nướng thêm giòn.',95,2,'https://cdn.tgdd.vn/2021/03/CookRecipe/Avatar/salad-cu-den-thumbnail.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fe115e8b-6758-4030-b62e-05cd597d4cbc',1,N'Làm nóng lò ở nhiệt độ 400 độ F.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('15d9bc56-8c16-4646-8126-2bdf1ddae6d1',2,N'Đặt một miếng giấy bạc lớn lên khay nướng có viền; đặt củ cải đường vào giữa giấy bạc.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('47748e58-195e-4841-9c51-75cdea272d67',3,N'Tập hợp các mặt của giấy bạc lại để tạo thành một gói; đổ vào 0.5 chén giấm và đóng gói.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0e048239-feae-4ea4-b93b-96a9c13b9d96',4,N'Nướng cho đến khi củ cải đường rất mềm khi dùng dao đâm vào, khoảng 45 phút. Mở gói giấy bạc; để nguội trong 30 phút.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2fb2cf36-4a84-4cc5-85dc-cff8d5fec5f9',5,N'Trong khi đó, đun sôi 0.5 chén giấm còn lại trong một cái chảo nhỏ trên lửa vừa và cao.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d41274fe-2b03-4e16-b596-e1738b090ef1',6,N'Nấu, không khuấy, cho đến khi giảm còn khoảng 3 muỗng canh, khoảng 10 phút. Tắt bếp.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('620cde3e-20ed-49ed-88ec-f158916665cb',7,N'Khi củ cải đủ nguội để xử lý, hãy gọt vỏ, sau đó cắt lát thật mỏng bằng dao hoặc mandoline.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a3dfe3e1-253f-4b40-afa1-c3e00518fe1e',8,N'Sắp xếp củ cải thái lát, chồng lên nhau một chút, trên đĩa.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4e0bc7ad-022c-43d5-9bc6-9b5186365c0a',9,N'Quăng arugula với dầu, muối và hạt tiêu trong một bát vừa; sắp xếp trên củ cải đường.','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8c655c44-45b6-401e-9f11-40b1743f881a',10,N'Rắc phô mai dê và quả óc chó','','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3a1a9599-33e9-42ee-aaaf-1d018da578e4','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','31c71e81-862d-4e38-95fd-9ac6dbe324f2',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1236b0ea-2c43-48a3-9106-6209e6c9a69b','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','4979b2d8-17b3-49bd-b4ae-809bad62bc57',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('63446a09-b04a-445b-b7d9-b9f99f6f1471','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','539766e0-658e-4a99-bb90-c16c5ae8626b',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('19dc9efc-59bf-4be9-adeb-f5ee8252f6db','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','60d4c367-c639-4495-9e04-9de215473b7a',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f7a53fe2-f619-4b27-9ed1-f6ff5f8cc12a','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4e4efbf2-05af-4977-b969-44868674c90f','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','9a6ab83e-211b-4a9e-9036-cbebab2c2d09',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e5325fae-8e5e-463f-8511-99d599f79773','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','86d13dcd-6a4d-4118-ba78-f97eeb36306f',60.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3bc6004e-558a-46ee-84b8-2214f428d354','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1','0a896963-de38-4d37-befa-6c8326f297e2',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1f11e075-a2b8-4f67-8d46-3452a435209f','92df7117-d1fa-420a-9771-6d7f54fe5d33','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',914.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('76a3bffd-e1ce-4386-bd59-6d72060188bc','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',225.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cc813b60-5194-4a48-9d49-bd2da8cd1653','71c34c3c-18da-4745-8b7d-4774800170ec','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('45633b24-fff1-45f6-8fae-e9e0318b9200','52c2699b-b628-4499-83d4-d478f7f9c902','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('878c512a-e199-4bf4-ab5f-53d36e488ff3','6631457d-6680-4faa-aa2b-1e7e21d12bd4','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',18.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2f9b6308-8676-40ea-9428-2327c0263a62','73bba7e2-640f-48da-b681-64d79c2ae9e0','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e98ac89f-087d-497a-bee4-e4a9317efe84','998ed6be-f894-4d11-bde8-22e46900a926','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9d4ee000-e917-47d2-aa9b-fd4dd70ae8a7','1d67d321-d82e-415e-8297-b24427aa46ae','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1f99e7d8-1806-44c6-8503-2565365dd0a7','8239b53c-b2c4-480d-a8fa-2f4660c678be','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1',317.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','56cb1d46-8e3f-40fd-bc70-d727eaaa13a1');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('81970e52-e6c3-40d7-9f3f-96b0c3bec948',N'Củ cải chiên nồi chiên không dầu với phô mai feta',N'Công thức này là một cách tuyệt vời để thưởng thức củ cải đường. Thật dễ dàng để kết hợp feta với củ cải cùng nhau.',30,1,'https://media.cooky.vn/images/blog-2016/3%202(1).jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0f387a74-a8f2-4fb4-81bc-9813781da18d',1,N'Làm nóng trước nồi chiên không dầu ở nhiệt độ 400°F trong 5 phút.','','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b6aa910f-61f5-4340-9e75-fb88d9ab0ffa',2,N'Cho củ cải đường vào tô lớn và thêm dầu, muối và tiêu','','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a512ad4f-f494-42aa-bc80-4d4cd53e8de5',3,N'Cho vào trong nồi chiên không dầu','','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9a0e430c-7dcb-422f-ab59-9e90c4456015',4,N'Xếp củ cải thành một lớp trong giỏ chiên; nấu trong 10 phút.','','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('95366310-c850-49e5-a7bc-97692d209e6e',5,N'Cẩn thận lật củ cải đường và nấu cho đến khi giòn và có màu nâu ở các cạnh, từ 6 đến 8 phút.','','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ec870ccc-c3b9-4aff-abc3-7317253804fb',6,N'Chuyển sang đĩa phục vụ và phủ feta và oregano lên trên.','','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fceb43a4-ca50-417d-a989-e031add3ef8c','81970e52-e6c3-40d7-9f3f-96b0c3bec948','31c71e81-862d-4e38-95fd-9ac6dbe324f2',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dc1e4063-91b3-4616-b669-2146ea320c80','81970e52-e6c3-40d7-9f3f-96b0c3bec948','60d4c367-c639-4495-9e04-9de215473b7a',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d65d2a51-9156-41a2-9f65-2d4f62ebddf7','81970e52-e6c3-40d7-9f3f-96b0c3bec948','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('016c1300-50df-4e9b-8868-7af269eb492d','81970e52-e6c3-40d7-9f3f-96b0c3bec948','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3b0ee19e-d4fc-4d92-89fe-ac381151c898','81970e52-e6c3-40d7-9f3f-96b0c3bec948','ce4ea144-6ca0-4f08-978c-d934007390b9',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dd087c8a-70cf-4921-b549-9d1cb4cd9811','81970e52-e6c3-40d7-9f3f-96b0c3bec948','3bbac6cd-1c4e-4481-a0a0-d9bece06ffa3',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2b42948d-8d4f-447f-b019-a0ef2f68d972','92df7117-d1fa-420a-9771-6d7f54fe5d33','81970e52-e6c3-40d7-9f3f-96b0c3bec948',444.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('395593dc-9684-420e-b076-78ddd8c86d8e','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','81970e52-e6c3-40d7-9f3f-96b0c3bec948',106.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e169c844-7052-43a6-a102-509afc11a4bd','71c34c3c-18da-4745-8b7d-4774800170ec','81970e52-e6c3-40d7-9f3f-96b0c3bec948',68.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1cb85658-374b-40bb-a9e1-2399f4e81c71','52c2699b-b628-4499-83d4-d478f7f9c902','81970e52-e6c3-40d7-9f3f-96b0c3bec948',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('434a843b-ad89-4666-8fea-e7d14241ebe9','6631457d-6680-4faa-aa2b-1e7e21d12bd4','81970e52-e6c3-40d7-9f3f-96b0c3bec948',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9c980dcd-cbf2-495a-a447-01ba8aa30877','73bba7e2-640f-48da-b681-64d79c2ae9e0','81970e52-e6c3-40d7-9f3f-96b0c3bec948',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c62d30ff-0321-4ecb-85e6-2516a58c72d3','998ed6be-f894-4d11-bde8-22e46900a926','81970e52-e6c3-40d7-9f3f-96b0c3bec948',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4e46fc3c-62dd-4210-9a10-02cfad4f6f2c','1d67d321-d82e-415e-8297-b24427aa46ae','81970e52-e6c3-40d7-9f3f-96b0c3bec948',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('549df672-14d7-48a1-93f4-1ddace34e57c','8239b53c-b2c4-480d-a8fa-2f4660c678be','81970e52-e6c3-40d7-9f3f-96b0c3bec948',320.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','81970e52-e6c3-40d7-9f3f-96b0c3bec948');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('7a625105-ee8e-4834-ad53-7c25d51f9907',N'Salad cải xoăn với quả việt quốc',N'Món salad này có hương vị từ nước sốt cam quýt ngọt ngào thắm vào cải xoăn ăn rất ngon miệng dành cho những ngày lễ cũng như ngày thường vẫn được',15,1,'https://cdn.nhathuoclongchau.com.vn/unsafe/https://cms-prod.s3-sgn09.fptcloud.com/goi_y_mot_so_cach_lam_salad_giam_can_nhanh_gon_it_ton_thoi_gian_kn_Hcz_1678351056_673ffc3538.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1f8e88f9-b194-42b7-9d1c-34b969e2eb68',1,N'Khuấy hẹ và giấm với nhau trong một bát lớn; để yên trong 5 phút.','','7a625105-ee8e-4834-ad53-7c25d51f9907');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9ef79a2e-aa0d-4153-bde3-7fe3c764f299',2,N'Đánh đều dầu, mật ong, vỏ cam, nước cam, muối và hạt tiêu.','','7a625105-ee8e-4834-ad53-7c25d51f9907');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0046929e-ee6a-4566-9ea1-42f141d0ca0f',3,N'Thêm cải xoăn và dùng tay xoa bóp hỗn hợp nhẹ nhàng cho đến khi cải xoăn hơi héo, khoảng 3 phút.','','7a625105-ee8e-4834-ad53-7c25d51f9907');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('69d4cac2-9fb9-4fe3-a582-1d5fad8bd443',4,N'Xếp salad ra đĩa; rắc quả nam việt quất và hạnh nhân.','','7a625105-ee8e-4834-ad53-7c25d51f9907');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('13217fb4-bb96-4af7-a92a-52b35f69b003','7a625105-ee8e-4834-ad53-7c25d51f9907','3c3f90b9-2827-47e7-9682-de118bcff623',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('86b242e5-ec85-45d0-b605-b2e08468761d','7a625105-ee8e-4834-ad53-7c25d51f9907','cd5349f9-bf34-4ef5-9032-a64fb7a0cd7d',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d9fc6fc9-c692-4f62-84d0-375901430af2','7a625105-ee8e-4834-ad53-7c25d51f9907','60d4c367-c639-4495-9e04-9de215473b7a',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e4575aa1-f663-4470-b6cf-f1fe8ea7f1ff','7a625105-ee8e-4834-ad53-7c25d51f9907','5910feab-2f62-4229-bb39-29e3aa451a96',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a87c63b8-5116-4335-962c-8b52c389fa1b','7a625105-ee8e-4834-ad53-7c25d51f9907','d7655e36-3650-4446-b4f5-54d7f380fa9f',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9eb818e9-b6ef-4957-9ce1-391917cd2963','7a625105-ee8e-4834-ad53-7c25d51f9907','1989cf12-af34-4fde-892e-2a138463ce6c',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a8d18e85-353c-472a-921f-011808b5cd70','7a625105-ee8e-4834-ad53-7c25d51f9907','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3e5059e7-24dc-4b4a-b8a7-47b4a2810622','7a625105-ee8e-4834-ad53-7c25d51f9907','2d679e49-a61a-4801-b500-2d438b441231',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7919a967-028f-47ff-99ad-3d31e37045f4','7a625105-ee8e-4834-ad53-7c25d51f9907','a39fef12-b1da-4b6c-96f2-d96fa033b016',7.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4db7c914-1764-4439-abe7-10caad572706','7a625105-ee8e-4834-ad53-7c25d51f9907','54165bc2-a44e-4b7d-b2f0-51d36fec28e0',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0cff27ae-3ed0-45cc-bb1f-fba476de954a','7a625105-ee8e-4834-ad53-7c25d51f9907','e751c2dc-dea8-4281-8a24-fca824169bf1',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('28f92e33-1d3f-4ba8-aaa2-d6367a3a8ead','92df7117-d1fa-420a-9771-6d7f54fe5d33','7a625105-ee8e-4834-ad53-7c25d51f9907',561.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5a90e119-b017-4f14-a35e-e1464f2ea835','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','7a625105-ee8e-4834-ad53-7c25d51f9907',134.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('77f4839b-656e-41ca-a37a-4af828301586','71c34c3c-18da-4745-8b7d-4774800170ec','7a625105-ee8e-4834-ad53-7c25d51f9907',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('363c1976-2ab7-4615-b0fb-88354c7d1451','52c2699b-b628-4499-83d4-d478f7f9c902','7a625105-ee8e-4834-ad53-7c25d51f9907',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('18bb416f-bcc4-4504-9e62-eb11db14df01','6631457d-6680-4faa-aa2b-1e7e21d12bd4','7a625105-ee8e-4834-ad53-7c25d51f9907',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1ffeaa3b-a4e1-4ed3-a96f-75a815eccdba','73bba7e2-640f-48da-b681-64d79c2ae9e0','7a625105-ee8e-4834-ad53-7c25d51f9907',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e671f3cb-49c5-4a3b-909a-bdd16d08dadb','998ed6be-f894-4d11-bde8-22e46900a926','7a625105-ee8e-4834-ad53-7c25d51f9907',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8c7ec338-369b-4ca6-a8d4-94912c3cac7e','1d67d321-d82e-415e-8297-b24427aa46ae','7a625105-ee8e-4834-ad53-7c25d51f9907',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('20867753-c346-451b-9203-f52e7c59a0e0','8239b53c-b2c4-480d-a8fa-2f4660c678be','7a625105-ee8e-4834-ad53-7c25d51f9907',262.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','7a625105-ee8e-4834-ad53-7c25d51f9907');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','7a625105-ee8e-4834-ad53-7c25d51f9907');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('2f705473-01e7-46fa-aafc-27dde35f41c2',N'Salad bông cải xanh',N'Đây là món salad bông cải xanh mà bạn sẽ nhận được những yêu cầu đặc biệt. Sự kết hợp của thịt xông khói, kem chua và sốt mayonnaise, hành lá và Cheddar thật khó cưỡng lại.',25,1,'https://ajimayo.com.vn/uploads/0.5018-05/bk0x9191a.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fa64c06e-9d39-4ab6-8a7c-e7e270005c8d',1,N'Nấu thịt xông khói trong chảo lớn trên lửa vừa cho đến khi giòn, từ 5 đến 7 phút.','','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('24f2e250-46cb-400e-b8b9-c51ab2c5d320',2,N'Chuyển sang đĩa có lót khăn giấy.','','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ca384a16-0cf7-40c4-a2ef-e535c1ac3d39',3,N'Dự trữ 1 muỗng canh chất béo thịt xông khói.','','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b470e3b4-4316-4ce1-b7d7-a1ea2900a273',4,N'Cắt thịt xông khói khi đủ nguội để xử lý.','','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('56ea6025-0109-421e-a34a-6f4d8bbe394d',5,N'Đánh kem chua, sốt mayonnaise, giấm, hạt tiêu và mỡ thịt xông khói đã để sẵn trong một bát lớn.','','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1154dc56-ffbe-4879-b9bc-646b7f03d508',6,N'Thêm bông cải xanh, hành lá, phô mai và thịt xông khói xắt nhỏ.','','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e1092091-5bda-48be-b20f-312879e1f620',7,N'Khuấy để phủ sốt lên bề mặt','','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dcdebdea-9966-4f15-88bc-47bc31b43e8f','2f705473-01e7-46fa-aafc-27dde35f41c2','705949d3-cee4-4db9-80bd-805093040b66',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b85f7201-620c-478e-878f-aa3348cd7729','2f705473-01e7-46fa-aafc-27dde35f41c2','f0b88a27-28eb-4f40-ba0a-aca38f9e1b37',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bcd89bde-9266-4d05-8343-31e432f38031','2f705473-01e7-46fa-aafc-27dde35f41c2','692938d0-e603-4d02-b905-21b2a85d2ff5',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a7d60603-ebfb-4d0a-b016-9074748d90ac','2f705473-01e7-46fa-aafc-27dde35f41c2','cd5349f9-bf34-4ef5-9032-a64fb7a0cd7d',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dd29f009-d47d-4fab-9691-501da185caa4','2f705473-01e7-46fa-aafc-27dde35f41c2','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ca326425-c536-4666-918e-4c1f828bff2b','2f705473-01e7-46fa-aafc-27dde35f41c2','5a4ff431-4166-45b9-9c59-eb417af5ee49',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fb74d4d6-b9d8-440d-aa4f-d5f4abb2f82c','2f705473-01e7-46fa-aafc-27dde35f41c2','cf33f2ff-8d3f-4c10-bd72-5d6fb17cf900',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4888fc98-2d5e-49e5-9e6d-8855010af89c','2f705473-01e7-46fa-aafc-27dde35f41c2','4a3f621a-17f4-48d8-a05e-4db58033ffe9',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0d509c14-de8e-42a4-b894-e4b5a5999730','92df7117-d1fa-420a-9771-6d7f54fe5d33','2f705473-01e7-46fa-aafc-27dde35f41c2',799.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4e2f16f9-bb85-4541-b8ca-75b615a6f9ed','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','2f705473-01e7-46fa-aafc-27dde35f41c2',191.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b1ebc850-7af9-4e7f-ae97-bba1360fd53f','71c34c3c-18da-4745-8b7d-4774800170ec','2f705473-01e7-46fa-aafc-27dde35f41c2',17.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8ad2c7d7-bf7b-415e-8d88-db465c3a7531','52c2699b-b628-4499-83d4-d478f7f9c902','2f705473-01e7-46fa-aafc-27dde35f41c2',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ec9b3ad2-25cc-418a-b7e3-1d8804d331db','6631457d-6680-4faa-aa2b-1e7e21d12bd4','2f705473-01e7-46fa-aafc-27dde35f41c2',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('249490b0-2274-4cb0-b32b-b221ef881d06','73bba7e2-640f-48da-b681-64d79c2ae9e0','2f705473-01e7-46fa-aafc-27dde35f41c2',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5a2cf5d3-08f0-4c28-892d-46911a13aa7e','998ed6be-f894-4d11-bde8-22e46900a926','2f705473-01e7-46fa-aafc-27dde35f41c2',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d006bc0e-5fd9-4819-9f25-b733247a9a82','1d67d321-d82e-415e-8297-b24427aa46ae','2f705473-01e7-46fa-aafc-27dde35f41c2',27.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7510e337-5c96-48c6-adc5-2bd8db6f3011','8239b53c-b2c4-480d-a8fa-2f4660c678be','2f705473-01e7-46fa-aafc-27dde35f41c2',229.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','2f705473-01e7-46fa-aafc-27dde35f41c2');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('41fa7eca-7595-4308-abe9-85fff615ec9e',N'Canh cà chua trứng',N'Món canh có tính giải nhiệt cao, tốt cho sức khỏe',10,1,'https://beptruong.edu.vn/wp-content/uploads/2018/03/canh-ca-chua-trung.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6ccd6e50-c218-4e5a-b31b-f5f9b372970b',1,N'đập trứng gà vào một cái bát, lấy cả lòng trắng và lòng đỏ, cho khoảng 1 thìa nước mắm đánh cho tan đều','','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f8dbee1c-9d89-4772-ac8a-e1f95216c24a',2,N'Cà chua rửa sạch, cắt miếng như múi cam','','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cc7c1d5e-025b-4ebb-8213-0fc14ea4a1ba',3,N'Hành hoa cắt nhỏ, một ít hành củ băm nhuyễn','','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('40a4d855-8d52-4153-944b-fd830e988d4a',4,N'Bắc nồi lên bếp, cho dầu ăn phi với hành củ cho thơm, bỏ cà chua vào và đổ ít nước, đảo đều cho ngấm mắm muối','','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d9c177f0-0df4-4aff-809e-296da107ea80',5,N'Thêm vào khoảng 1-1,5 lít nước, nấu cho sôi lên. Khi canh sôi thì cho trứng vào, khuấy đều liên tục cho trứng tan ra, khi chín thành các mảng trứng có lẫn cả lòng đỏ và lòng trắng nhìn rất hấp dẫn','','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8280ee4c-7199-402b-8530-be128393deaa',6,N'Ðến khi trứng chín, bạn cho hành hoa vào quấy đều rồi tắt lửa','','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c7e9bc18-c607-47ec-806f-633103a9cb04',7,N'ăn','','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('119afff4-f6da-41d0-93ca-2795c17a03c8','41fa7eca-7595-4308-abe9-85fff615ec9e','d2985015-ad21-4c3a-8f22-608be39f47c0',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fdb05aac-0bec-4ca3-acd6-9a39695776a9','41fa7eca-7595-4308-abe9-85fff615ec9e','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7d11438b-d88d-4844-aa00-40e71aca8a5c','92df7117-d1fa-420a-9771-6d7f54fe5d33','41fa7eca-7595-4308-abe9-85fff615ec9e',200.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6dde0340-4ff1-4964-8cdc-1bfcfab8263e','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','41fa7eca-7595-4308-abe9-85fff615ec9e',52.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d7a166e8-b077-4597-a952-686dae94bd48','71c34c3c-18da-4745-8b7d-4774800170ec','41fa7eca-7595-4308-abe9-85fff615ec9e',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cec2eeff-1619-440f-882f-de1b38a28e1e','52c2699b-b628-4499-83d4-d478f7f9c902','41fa7eca-7595-4308-abe9-85fff615ec9e',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f2283327-4509-4ce4-a59e-f4f8957f795b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','41fa7eca-7595-4308-abe9-85fff615ec9e',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bb53263c-6740-4857-a082-d3d0ae3ac52e','73bba7e2-640f-48da-b681-64d79c2ae9e0','41fa7eca-7595-4308-abe9-85fff615ec9e',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2860faad-2c0f-465a-8146-ffcae7949101','998ed6be-f894-4d11-bde8-22e46900a926','41fa7eca-7595-4308-abe9-85fff615ec9e',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6996bd23-a3dd-4943-8f44-eb0b7e168d94','1d67d321-d82e-415e-8297-b24427aa46ae','41fa7eca-7595-4308-abe9-85fff615ec9e',200.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b76a17d0-1bf6-40a5-9bfe-ec4c26200495','8239b53c-b2c4-480d-a8fa-2f4660c678be','41fa7eca-7595-4308-abe9-85fff615ec9e',0.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('c7557e8c-3575-4ec6-9851-47966f2ab424','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','41fa7eca-7595-4308-abe9-85fff615ec9e');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('675f69d7-4f08-46fb-8e18-6c1908a01918',N'Canh ngao nấu chua cay',N'Canh ngao có hàm lượng dinh dưỡng phong phú, là món canh giải nhiệt vào những ngày hè nóng nực',10,2,'https://static-images.vnncdn.net/files/publish/2022/5/18/4-cach-nau-canh-ngao-chua-giup-dua-com-ngay-nang-nong-f7d6e359f78541e3a17824b0a68cea3a.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('00ee2de7-2baf-4ab8-b05d-d125816bd2f8',1,N'Đặt chảo lên bếp, cho dầu ăn vào. Khi dầu nóng, cho hành tím đã cắt nhỏ vào và phi thơm','','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e4334d3b-46ab-4853-8d44-9212a78c43cb',2,N'Tiếp theo, thêm cà chua vào xào đến khi cà chua ngả màu thì cho lá chanh vào và đảo đều','','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5069c738-9bbc-4522-b619-eee892ec8a7e',3,N'cho vào nồi lượng nước vừa đủ cho cả gia đình, nấu đến khi nước sôi, thêm sả, 2 trái ớt và gừng vào nồi','','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4e574748-326a-499b-821d-38ecc48e39f2',4,N'Cho vắt me vào bát với nước nóng, chắt lấy nước me. Cho thêm nước me vào nồi canh','','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a58afdf5-e23a-4d01-9f7c-56538548139d',5,N'Khi nước bắt đầu sôi lại, cho ngao vào và đậy nắp nồi lại','','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('69fa2c53-0374-4c10-9805-5c72bec9f2ff',6,N'hờ đến khi nước sôi, bạn nêm nếm lại gia vị vừa ăn là có thể thưởng thức ngay','','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dace6cfd-5cb9-45a0-8410-6650ad431f9c',7,N'ăn','','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('832debbf-85ee-4b68-99f8-6a7eb7b790e5','675f69d7-4f08-46fb-8e18-6c1908a01918','d2985015-ad21-4c3a-8f22-608be39f47c0',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3cc2a1b1-c5d7-4741-b1c4-f5627fd6da35','675f69d7-4f08-46fb-8e18-6c1908a01918','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a148a902-3a33-40a2-8044-1f0d89bb714e','675f69d7-4f08-46fb-8e18-6c1908a01918','2ee16117-3cf7-472f-9485-4ba4ca94be9d',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3bdcc756-9e5e-40eb-9e9e-7179e4e10474','675f69d7-4f08-46fb-8e18-6c1908a01918','a6d4322e-e06a-4edb-ac87-91a4eebac40b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f2a82d51-1768-4ce4-ac6a-73074fdf97b8','675f69d7-4f08-46fb-8e18-6c1908a01918','35141130-f290-471b-aeb8-20d3c0e529ae',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9ad37560-026a-4bc1-966f-ac40b7e2158d','675f69d7-4f08-46fb-8e18-6c1908a01918','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('951f4794-31e5-4613-a4da-eb5537c4ea65','675f69d7-4f08-46fb-8e18-6c1908a01918','10ea70bf-5c23-421a-8fec-8bb05e00d13d',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('aabb64cd-3b7e-4396-8f25-c8f2b67dad36','92df7117-d1fa-420a-9771-6d7f54fe5d33','675f69d7-4f08-46fb-8e18-6c1908a01918',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('29a574ea-ac77-4c3c-8176-a9f1ef19ea51','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','675f69d7-4f08-46fb-8e18-6c1908a01918',700.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fc2a35ef-4aa2-45a8-b722-fcb1a1872700','71c34c3c-18da-4745-8b7d-4774800170ec','675f69d7-4f08-46fb-8e18-6c1908a01918',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0cae99db-7349-47cb-a35a-0ee01cf22719','52c2699b-b628-4499-83d4-d478f7f9c902','675f69d7-4f08-46fb-8e18-6c1908a01918',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('58a3a78e-c0fe-4ea5-b233-c005e5b1bd31','6631457d-6680-4faa-aa2b-1e7e21d12bd4','675f69d7-4f08-46fb-8e18-6c1908a01918',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6cf5ed8a-9469-44ba-bd23-eb6fd4ccd197','73bba7e2-640f-48da-b681-64d79c2ae9e0','675f69d7-4f08-46fb-8e18-6c1908a01918',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f16d64ef-0628-4844-ae19-0a350b0e46d6','998ed6be-f894-4d11-bde8-22e46900a926','675f69d7-4f08-46fb-8e18-6c1908a01918',48.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('849d0c8f-1022-4113-8ca2-d7f94cb99137','1d67d321-d82e-415e-8297-b24427aa46ae','675f69d7-4f08-46fb-8e18-6c1908a01918',130.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('651061e9-9886-4455-a20a-257f0b387c06','8239b53c-b2c4-480d-a8fa-2f4660c678be','675f69d7-4f08-46fb-8e18-6c1908a01918',3.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','675f69d7-4f08-46fb-8e18-6c1908a01918');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('b475f183-01e7-44a5-9352-a48cd04dd767',N'Canh ngao nấu dọc mùng',N'Canh ngao có hàm lượng dinh dưỡng phong phú, là món canh giải nhiệt vào những ngày hè nóng nực',10,2,'https://i.ytimg.com/vi/_RtnvZfKHlY/maxresdefault.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ce60428c-bf1b-40d6-b6d5-526f5620101e',1,N'Đặt chảo lên bếp, cho dầu ăn vào, khi dầu nóng, phi tỏi. Sau đó thêm cà chua và xào sơ cà chua, tiếp tục thêm thịt ngao và một chút nước mắm và hạt nêm vào và đảo đều','','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d59dd2b9-af6a-41c2-a98e-b60482873e80',2,N'Sử dụng nước nóng để ngâm vắt me. Sau đó chắt lấy nước','','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1bcdf85e-aff7-4860-a7c8-7ed51382b38d',3,N'Cho thêm vào nồi, nước luộc me, lượng nước vừa ăn, quả thơm','','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('80625d46-0196-4f7c-a52c-8fa317eca8c0',4,N'Khi nước sôi, cho dọc mùng, đậu bắp và nêm nếm gia vị vừa ăn. Nấu đến khi nước sôi lại và tắt bếp','','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3d977d28-9623-44fa-bdce-a9217e2eef94',5,N'Cho canh ngao nấu chua dọc mùng vào bát và trang trí rau thơm lên trên','','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ddb08557-4605-4f26-9a56-cf02f9a1cde4',6,N'ăn','','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('614b5dd1-8230-459e-85e6-346b68ab00ad','b475f183-01e7-44a5-9352-a48cd04dd767','df069702-6f47-45ec-b135-21085fca5e98',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('918d16cd-7f6c-467f-aacc-aab46a3574c8','b475f183-01e7-44a5-9352-a48cd04dd767','8d7ac445-aa85-4791-a76e-daff0078fb29',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a72982a9-e294-4635-be73-832a47b452c5','b475f183-01e7-44a5-9352-a48cd04dd767','eceb7d00-f645-46ef-9ba5-14715f6c6482',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('911b2cdf-fcb6-42db-82ab-2c0fbd646bf6','b475f183-01e7-44a5-9352-a48cd04dd767','770f3d34-b289-44eb-94fd-7b7bb598181d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('739cb516-33f2-4b96-8a90-89ab06dc8f01','b475f183-01e7-44a5-9352-a48cd04dd767','ac80f30e-a58d-4ee1-a92a-76f94454551b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1fa4dc69-9204-433f-a8e9-a1aa23edba55','b475f183-01e7-44a5-9352-a48cd04dd767','10ea70bf-5c23-421a-8fec-8bb05e00d13d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('09c18508-3530-4cce-b3ac-52bf71e0b0ff','b475f183-01e7-44a5-9352-a48cd04dd767','35141130-f290-471b-aeb8-20d3c0e529ae',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1ca38aad-57a7-4f22-8396-69c1cf4174fb','b475f183-01e7-44a5-9352-a48cd04dd767','d938f228-5967-4e19-b432-34cf16837fb4',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c49276af-f484-4a7d-85fb-1d0e937a1bd4','92df7117-d1fa-420a-9771-6d7f54fe5d33','b475f183-01e7-44a5-9352-a48cd04dd767',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('310921e8-6855-4c88-bb1b-29c37fab6389','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','b475f183-01e7-44a5-9352-a48cd04dd767',700.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6db82e0c-408e-4cc9-9c52-654b5781bb77','71c34c3c-18da-4745-8b7d-4774800170ec','b475f183-01e7-44a5-9352-a48cd04dd767',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2c5df28f-04e3-455c-9770-682391a1e855','52c2699b-b628-4499-83d4-d478f7f9c902','b475f183-01e7-44a5-9352-a48cd04dd767',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7e7ad081-ed7d-41c3-9fe4-f91b92022d5d','6631457d-6680-4faa-aa2b-1e7e21d12bd4','b475f183-01e7-44a5-9352-a48cd04dd767',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b08fbd58-026d-4b1c-a41c-ec961f83edee','73bba7e2-640f-48da-b681-64d79c2ae9e0','b475f183-01e7-44a5-9352-a48cd04dd767',33.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('731b52ab-c9fe-4063-9930-f3efc33cb115','998ed6be-f894-4d11-bde8-22e46900a926','b475f183-01e7-44a5-9352-a48cd04dd767',50.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('71177376-e112-4dbc-96b8-8e7e15963cd2','1d67d321-d82e-415e-8297-b24427aa46ae','b475f183-01e7-44a5-9352-a48cd04dd767',130.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cd30b016-42c6-40ee-8298-c30a61dd5165','8239b53c-b2c4-480d-a8fa-2f4660c678be','b475f183-01e7-44a5-9352-a48cd04dd767',3.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','b475f183-01e7-44a5-9352-a48cd04dd767');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('d085c6b1-b535-4a25-8af9-38f4f1db103a',N'Canh ngao nấu dứa',N'Canh ngao có hàm lượng dinh dưỡng phong phú, là món canh giải nhiệt vào những ngày hè nóng nực',10,2,'https://img-global.cpcdn.com/recipes/159b8ec4de662549/1200x630cq70/photo.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aae6d67b-03d3-40a7-9744-6656f2ac38eb',1,N'Cho dầu ăn vào nồi và phi thơm cùng với hành tím','','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e9f4560e-173c-4e43-bf26-20d30af60898',2,N'Sau đó, thêm cà chua cắt hạt lựu vào và xào sơ, tiếp theo cho ngao vào và xào cùng với cà chua. Khi cả hai chín, cho ra bát','','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a7efac0f-2528-4818-9ddc-61f08d66c9dd',3,N'Nấu nước luộc nghêu cùng với dứa khoảng 10 phút','','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('520f8355-f8a5-4eaf-9502-91e317192071',4,N'Khi nước sôi, cho phần nghêu đã xào, cà chua cắt múi cau vào. Nêm nếm gia vị vừa ăn','','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('82e23c79-b53e-44f6-9450-1f2269dd9f1c',5,N'Đến khi nước sôi lại, có thể tắt bếp và thưởng thức ngay','','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('35b2a3e2-60a1-470b-822d-43770a82f8f9',6,N'ăn','','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6aab60a9-5438-4ef4-9f0d-026357397c83','d085c6b1-b535-4a25-8af9-38f4f1db103a','df069702-6f47-45ec-b135-21085fca5e98',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('203cc9ee-4629-40d6-8935-486aa1c186bc','d085c6b1-b535-4a25-8af9-38f4f1db103a','ac80f30e-a58d-4ee1-a92a-76f94454551b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('81b14212-dc1e-43d5-9664-a2a4b258e9df','d085c6b1-b535-4a25-8af9-38f4f1db103a','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a950f7e6-5ac3-4221-8c2a-49934a693211','d085c6b1-b535-4a25-8af9-38f4f1db103a','334b9883-f828-4e6e-9f70-6ac77c1a6adf',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('612e2a3f-c26c-4f15-8cb1-9f6899d2da4b','92df7117-d1fa-420a-9771-6d7f54fe5d33','d085c6b1-b535-4a25-8af9-38f4f1db103a',230.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('210ba16d-821d-4894-95ad-9e77459f8617','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','d085c6b1-b535-4a25-8af9-38f4f1db103a',700.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f7e2a7c4-0059-4f34-8fb2-0443d92397ec','71c34c3c-18da-4745-8b7d-4774800170ec','d085c6b1-b535-4a25-8af9-38f4f1db103a',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('46af7f86-fae7-427d-9757-351e80d2da99','52c2699b-b628-4499-83d4-d478f7f9c902','d085c6b1-b535-4a25-8af9-38f4f1db103a',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4261ffdf-6183-43de-85b1-4f9f5a345211','6631457d-6680-4faa-aa2b-1e7e21d12bd4','d085c6b1-b535-4a25-8af9-38f4f1db103a',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b042e3b1-800e-486c-9dd4-76f3ed69e4b0','73bba7e2-640f-48da-b681-64d79c2ae9e0','d085c6b1-b535-4a25-8af9-38f4f1db103a',23.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b680a446-d600-4f61-97fb-edfc193e8fa8','998ed6be-f894-4d11-bde8-22e46900a926','d085c6b1-b535-4a25-8af9-38f4f1db103a',48.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ed27321a-9573-4957-95c6-e2446aaa54e7','1d67d321-d82e-415e-8297-b24427aa46ae','d085c6b1-b535-4a25-8af9-38f4f1db103a',130.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('39084e40-c69e-4ed4-93d4-8b318c73527c','8239b53c-b2c4-480d-a8fa-2f4660c678be','d085c6b1-b535-4a25-8af9-38f4f1db103a',2.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','d085c6b1-b535-4a25-8af9-38f4f1db103a');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('97e31f09-e2fe-4065-91fb-6bbe98764d0a',N'Canh ngao chua với sấu',N'Không mất nhiều thời gian để có được món canh ngao thơm ngon, thanh nhiệt trong bữa cơm mùa hè',10,2,'https://cdn.tgdd.vn/2020/09/content/Salad-la-gi-phan-loai-salad-5-800x467.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cb82695c-5043-4bcc-8a2d-02832b778f76',1,N'Đầu tiên, phi thơm hành, cho cà chua vào trước, đảo đều','','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f705c8ed-8e51-40b7-a034-6c4ead8ad3fe',2,N'tiếp đến là phần thịt ngao, một ít nước mắm, xào sơ và cuối cùng là sấu','','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a0f2621b-94b1-48f4-8223-b37563651a2c',3,N'Sau đó, cho vào nồi nước luộc ngao, nấu sôi','','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a1ab2e10-229b-4955-b186-a1bedf7a2b37',4,N'nêm nếm gia vị vừa ăn và tắt bếp','','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('abecc097-ee1c-48b5-b656-d3a136ef6c34',5,N'an','','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f86915e4-2691-4b6f-8cac-4901c8dd9a09','97e31f09-e2fe-4065-91fb-6bbe98764d0a','df069702-6f47-45ec-b135-21085fca5e98',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('61f83f8c-b418-43ca-8d7a-18191c069f36','97e31f09-e2fe-4065-91fb-6bbe98764d0a','6477b319-07f2-407b-bf74-a6fa8c3c3d7a',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4c9f333a-9613-46e1-96d5-0a5e65eb31e4','97e31f09-e2fe-4065-91fb-6bbe98764d0a','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3976b0cf-9a65-4be5-83b4-dcbd055857eb','97e31f09-e2fe-4065-91fb-6bbe98764d0a','334b9883-f828-4e6e-9f70-6ac77c1a6adf',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1f0bf907-b5d7-406e-bf5c-72a448cb7bcb','97e31f09-e2fe-4065-91fb-6bbe98764d0a','a6d4322e-e06a-4edb-ac87-91a4eebac40b',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a9c99c7c-1c82-47d0-bc31-6cc88b38d904','92df7117-d1fa-420a-9771-6d7f54fe5d33','97e31f09-e2fe-4065-91fb-6bbe98764d0a',200.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('07f82010-d46a-417c-ae99-3c9806a894e3','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','97e31f09-e2fe-4065-91fb-6bbe98764d0a',600.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e2092a38-b202-4cf9-a62d-3027a22c1a17','71c34c3c-18da-4745-8b7d-4774800170ec','97e31f09-e2fe-4065-91fb-6bbe98764d0a',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('69076604-dc32-424a-998e-773718054205','52c2699b-b628-4499-83d4-d478f7f9c902','97e31f09-e2fe-4065-91fb-6bbe98764d0a',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fde1d382-24be-4030-8da5-2df6a6498ffd','6631457d-6680-4faa-aa2b-1e7e21d12bd4','97e31f09-e2fe-4065-91fb-6bbe98764d0a',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9395ca17-f862-41de-ba17-a99d5cfd81b3','73bba7e2-640f-48da-b681-64d79c2ae9e0','97e31f09-e2fe-4065-91fb-6bbe98764d0a',23.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bd58e949-cf61-4cf1-8132-9401c943a6cf','998ed6be-f894-4d11-bde8-22e46900a926','97e31f09-e2fe-4065-91fb-6bbe98764d0a',40.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2bd8a3b3-7ef2-4dd1-95c2-489f6ae0f0da','1d67d321-d82e-415e-8297-b24427aa46ae','97e31f09-e2fe-4065-91fb-6bbe98764d0a',120.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e741b99b-9261-469b-898e-fc9a133242e5','8239b53c-b2c4-480d-a8fa-2f4660c678be','97e31f09-e2fe-4065-91fb-6bbe98764d0a',2.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','97e31f09-e2fe-4065-91fb-6bbe98764d0a');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',N'Canh chua cá khoai',N'Cá khoai khi kết hợp với các loại rau củ sẽ tạo thành món canh ngon có tác dụng tiêu độc, giải nhiệt, tốt cho sức khỏe, phù hợp cho cả trẻ em và người lớn.',30,2,'https://cdn.tgdd.vn/Files/2021/09/07/1380828/3-cach-lam-canh-ca-khoai-nau-chua-nau-thi-la-nau-ngot-ngon-mieng-don-gian-202109071555047924.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1fac6877-35a7-405e-82a6-bfe7d22d5425',1,N'Gừng, nghệ bạn gọt vỏ, rửa sạch, giã nát. Để khử mùi tanh của cá khoai, bạn đem rửa cá với hỗn hợp nước muối pha giấm, sau đó rửa lại với nước sạch.','','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1bda18ae-5fb5-4a40-a53d-112ef3a5c292',2,N'Trộn đều cá với gừng nghệ giã nát, 1 muỗng cà phê muối, 1 muỗng cà phê hạt nêm. Ướp cá khoảng 15 phút để cá ngấm gia vị','','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('027cabf8-4be0-4b89-ba5b-60e5dfef3dcd',3,N'Đặt nồi lên bếp, đun nóng 1 muỗng canh dầu ăn sau đó trút hành tím vào phi thơm','','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('70234237-5ba9-4523-9e2a-be437084bf0e',4,N'Tiếp theo cho cà chua vào xào mềm rồi cho quả sấu và 1 muỗng cà phê muối vào xào chung, xào khoảng 1 phút thì bạn cho vào 500ml nước','','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('88501c0e-fdaf-41bb-8fb9-6e7df74cccdf',5,N'Khi nước sôi bạn nêm vào 2 muỗng cà phê đường, khuấy đều rồi trút phần cá khoai vào đun nhỏ lửa cho đến khi nước sôi trở lại thì cắt vào 1 trái ớt','','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c58c078e-00a7-4670-901a-fa5e7e303811',6,N'Đun sôi thêm 3 - 5 phút là cá chín, bạn cho hành lá, thì là vào rồi tắt bếp','','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('36ff9c68-daa8-4cfe-8176-d81bd78654ab',7,N'ăn','','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7f50eb36-050b-4fe8-93bf-d160ebf6a4aa','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','df069702-6f47-45ec-b135-21085fca5e98',800.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ce037863-9959-416c-a002-229cf16ba346','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('181751e8-262a-4762-9388-1a95276dbafe','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','334b9883-f828-4e6e-9f70-6ac77c1a6adf',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d7b7b31c-b042-4fa0-911c-95cae34457ce','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','16eda913-da50-4711-90c4-7bbbf507e1d1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('79f89054-0300-4c99-9156-9dcb6c9b60a2','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','fce4620d-51e3-4cd6-8143-a1386bd71848',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0aedcbf6-9618-49ae-9160-0b00e9fc9e67','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','a6d4322e-e06a-4edb-ac87-91a4eebac40b',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('80b3156a-7e22-43c9-ac5b-cabd5ec1ca08','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','fceda5b2-9c26-4a06-88e3-f508837891c0',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('956f4a39-298b-46ab-b9cc-31f262a0e367','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','6477b319-07f2-407b-bf74-a6fa8c3c3d7a',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cbe41b0d-2b4f-403d-97f2-4a6be9770748','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c','35141130-f290-471b-aeb8-20d3c0e529ae',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d3caec9b-307f-48b6-aee3-85100283751e','92df7117-d1fa-420a-9771-6d7f54fe5d33','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e51aaf3d-0dc3-4d5e-8310-0dd2e4f73628','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',220.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('db3fe398-aaf8-4862-9c3a-4de390fd21f1','71c34c3c-18da-4745-8b7d-4774800170ec','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c8e47ce2-4718-451d-9e7c-15148cf39a58','52c2699b-b628-4499-83d4-d478f7f9c902','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1424de4f-1a3e-4506-879b-45091eedf3bc','6631457d-6680-4faa-aa2b-1e7e21d12bd4','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('467047f9-4d66-4e72-944d-44d9bd4c689a','73bba7e2-640f-48da-b681-64d79c2ae9e0','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('eac62ece-076d-46a9-a041-682e49d0f512','998ed6be-f894-4d11-bde8-22e46900a926','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('88603a37-8cc7-4473-99e7-1a98dd9927dd','1d67d321-d82e-415e-8297-b24427aa46ae','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('18ab9735-ab95-4b1e-b4f2-335bbd8fc5b9','8239b53c-b2c4-480d-a8fa-2f4660c678be','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c',2.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','51c02c38-9dcd-4b4f-a366-f744cb5b1c4c');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('41e05b93-9dd2-449e-ae18-17b2789cb835',N'Canh chua cá lóc',N'Cá lóc là một loài cá được sử dụng nấu nhiều món ăn ngon và bổ dưỡng. Giá trị dinh dưỡng của loài cá này khá cao đồng thời lại ít chứa chất béo có hại cho sức khỏe.',30,2,'https://www.huongnghiepaau.com/wp-content/uploads/2018/03/to-canh-chua-ca-loc-thanh-mat.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('76329e05-0d12-4b66-9fbf-34e361669540',1,N'Đặt một nồi lớn lên bếp, cho dầu ăn vào đến khi sôi phi thơm hành tỏi.','','41e05b93-9dd2-449e-ae18-17b2789cb835');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('25ba2531-478e-4e5a-bc42-2515bbd41350',2,N'Sau đó cho cá lóc vào, lưu ý phải lật đều các mặt cá đến khi cá chín tái có màu trắng đục, thơm. Cho hành ớt đã được giã sẵn cho vào nồi.','','41e05b93-9dd2-449e-ae18-17b2789cb835');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c27d9ce8-803a-4a43-bb5c-3d748b30db58',3,N'Cho khoảng 1,2 lít nước cùng me ngào vào đun sôi. Lúc bỏ me vào bạn hãy nhớ vớt hột me và vỏ me ra để khi ăn được ngon miệng hơn. Khi nước sôi, dùng thìa lớn vớt hết bọt phía trên để nước canh được trong. Đun đến khi nồi canh sôi bùng lên và cá chín.','','41e05b93-9dd2-449e-ae18-17b2789cb835');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6ab094ed-8f42-45c6-8ace-96549ebf7f06',4,N'êm nếm thêm các gia vị sao cho vừa miệng và hợp khẩu vị với gia đình bạn. Khi cá chín, tiếp tục để lần lượt theo thứ tự bạc hà (dọc mùng), thơm (khóm), đậu bắp (đậu nhớt), cà chua và giá đỗ vào nồi canh.','','41e05b93-9dd2-449e-ae18-17b2789cb835');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('068d111a-2e0e-4546-babf-3ca7554b6030',5,N'Đun nồi canh chua thêm khoảng 1 đến 2 phút rồi tắt bếp. Cho canh ra tô thêm một vài cọng hành, một vài lát ớt để tạo vị cay nồng.','','41e05b93-9dd2-449e-ae18-17b2789cb835');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9add747f-c49c-4d0e-ad31-e5a9b23b0b98',6,N'ăn','','41e05b93-9dd2-449e-ae18-17b2789cb835');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4e1289b0-2cc3-4239-a9f5-398d905a2b8e','41e05b93-9dd2-449e-ae18-17b2789cb835','ea6f6bd8-f6f6-440d-a76c-44f2f36413dc',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d62a2c2c-e82a-4a11-bd8a-b7c8ab3cbb6a','41e05b93-9dd2-449e-ae18-17b2789cb835','ac80f30e-a58d-4ee1-a92a-76f94454551b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('186aaf4f-e8c5-4148-8238-390d7b2e68a6','41e05b93-9dd2-449e-ae18-17b2789cb835','794ecc8a-9042-4e4d-87fa-8fd5c9ef5e5a',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5f09638a-8d8a-47a2-8537-8adc9e00f9f4','41e05b93-9dd2-449e-ae18-17b2789cb835','35141130-f290-471b-aeb8-20d3c0e529ae',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('abab0bb0-9ba0-48d5-beef-14f3c47e8b6e','41e05b93-9dd2-449e-ae18-17b2789cb835','c881b40b-6ed6-46a9-a1fd-e85dc95099d3',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('403124a1-1708-4cf1-8ef2-db911d387e1b','41e05b93-9dd2-449e-ae18-17b2789cb835','770f3d34-b289-44eb-94fd-7b7bb598181d',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1d63339e-8b31-4e81-96c3-30dee53da85f','41e05b93-9dd2-449e-ae18-17b2789cb835','eceb7d00-f645-46ef-9ba5-14715f6c6482',150.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('16ddb464-fdff-466b-973c-4e980fd78231','41e05b93-9dd2-449e-ae18-17b2789cb835','8d7ac445-aa85-4791-a76e-daff0078fb29',70.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('01004f44-728b-4210-bc23-bf6dd5fbc485','92df7117-d1fa-420a-9771-6d7f54fe5d33','41e05b93-9dd2-449e-ae18-17b2789cb835',340.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1522151b-77f8-4436-8e27-8b5d8fcf26f4','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','41e05b93-9dd2-449e-ae18-17b2789cb835',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f411af88-54d3-43bd-863a-17de36b197be','71c34c3c-18da-4745-8b7d-4774800170ec','41e05b93-9dd2-449e-ae18-17b2789cb835',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b017ff37-c4d7-4e27-8213-c786bcac4610','52c2699b-b628-4499-83d4-d478f7f9c902','41e05b93-9dd2-449e-ae18-17b2789cb835',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6bb052f0-dfa8-4afd-a388-894510871db2','6631457d-6680-4faa-aa2b-1e7e21d12bd4','41e05b93-9dd2-449e-ae18-17b2789cb835',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('21bd86fb-b54e-415f-a483-98d42a926ecd','73bba7e2-640f-48da-b681-64d79c2ae9e0','41e05b93-9dd2-449e-ae18-17b2789cb835',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dfe1e653-f0b4-4d28-8f24-63261da44ccd','998ed6be-f894-4d11-bde8-22e46900a926','41e05b93-9dd2-449e-ae18-17b2789cb835',60.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('786a9f57-7dfc-452c-b091-6643a69e4a3a','1d67d321-d82e-415e-8297-b24427aa46ae','41e05b93-9dd2-449e-ae18-17b2789cb835',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2dda53aa-fb53-43ef-a74a-60927a5c7664','8239b53c-b2c4-480d-a8fa-2f4660c678be','41e05b93-9dd2-449e-ae18-17b2789cb835',20.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','41e05b93-9dd2-449e-ae18-17b2789cb835');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('35dc55a7-03f7-432b-82a9-189fd1748ce0',N'Canh thịt nạc nấu rau củ',N'Sự kết hợp hài hòa giữa thịt nạc và vị ngọt mát của rau củ, quả tạo nên món canh thơm ngon.',15,2,'https://gl.amthuc365.vn/thumbnails/850/590/uploads/content/bf73774f138bd4c9f91807af273b82d9.jpg?v=4.1');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('178c0b91-92a4-4f8d-b13a-7bb5235bd82b',1,N'Thịt nạc rửa sạch, trần qua nước sôi và rửa lại bằng nước lã, Thái mỏng , cho vào cối xay rồi cho ra bát ướp với hạt tiêu và chút nước mắm.','','35dc55a7-03f7-432b-82a9-189fd1748ce0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('310c8588-32a5-4152-8bb9-4a469adede09',2,N'Cà rốt, khoai tây gọt vỏ, tỉa hoa cắt khoanh tròn. Súp lơ rửa sạch tỉa thành từng múi nhỏ. Ngô bóc bỏ vỏ xanh nhặt sạch râu ngô và rửa sạch.','','35dc55a7-03f7-432b-82a9-189fd1748ce0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('18e1cc6a-e1e5-4a13-82ea-aba4d2e51d5b',3,N'Cho 1 chút dầu ăn vào chảo và phi thơm với hành khô, cho thịt đã ướp vào xào cho chín tới rồi xúc thịt ra đĩa.','','35dc55a7-03f7-432b-82a9-189fd1748ce0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5fce4059-c312-4cd8-8660-ebd26c9a137b',4,N'Bắc nồi nấu canh lên bếp cho dầu ăn vào xào xơ qua cà rốt, khoai tây, ngô bao tử với 1 thìa nhỏ muối.','','35dc55a7-03f7-432b-82a9-189fd1748ce0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c2b0495e-43f3-424a-bec7-678c2282d1dd',5,N'Đổ nước lọc vào đun cho đến khi cà rốt và khoai tây đã chín , cho tiếp súp lơ và hành tây vào đun sôi thì cho thịt đã xào chín vào đun tiếp trong khoảng 5 phút cho hạt nêm, hành hoa, mùi tầu đã thái nhỏ vào.','','35dc55a7-03f7-432b-82a9-189fd1748ce0');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('78be53e0-1b9b-4f14-81cb-b4ebd5b0a852',6,N'ăn','','35dc55a7-03f7-432b-82a9-189fd1748ce0');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d0813f8a-4b7d-4c43-972f-3df35cc30b48','35dc55a7-03f7-432b-82a9-189fd1748ce0','47265f9c-9c95-41f7-a759-b0d2ab5ed398',250.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('477ee9e3-3ca2-497d-9e6b-8f0be21212bf','35dc55a7-03f7-432b-82a9-189fd1748ce0','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7cb034dd-eccd-41d2-a0af-3165ccb16654','35dc55a7-03f7-432b-82a9-189fd1748ce0','14094c14-951b-4d84-9d23-d9c81db2a9eb',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aa67a78e-9c24-4c9e-b731-dc837f34dc58','35dc55a7-03f7-432b-82a9-189fd1748ce0','c05d5eac-ae3f-43fe-a347-453c11b64d27',5.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bb2a2d74-dd10-45bf-b5a7-40a5375bdf02','35dc55a7-03f7-432b-82a9-189fd1748ce0','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d20bc767-4cfb-452c-8ea9-4db6dc37a49f','35dc55a7-03f7-432b-82a9-189fd1748ce0','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a563c3ff-756d-4230-bc71-5c1ac3f40b54','35dc55a7-03f7-432b-82a9-189fd1748ce0','334b9883-f828-4e6e-9f70-6ac77c1a6adf',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('17096d2c-75ad-42fc-bc3c-2e63f63d08e1','92df7117-d1fa-420a-9771-6d7f54fe5d33','35dc55a7-03f7-432b-82a9-189fd1748ce0',320.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('469bf93d-320a-41fa-872c-76a74a676195','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','35dc55a7-03f7-432b-82a9-189fd1748ce0',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7f0c305c-d107-4289-92e1-0e8cd72f1198','71c34c3c-18da-4745-8b7d-4774800170ec','35dc55a7-03f7-432b-82a9-189fd1748ce0',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b67fdf21-170e-4a73-88fa-a97f60bb248f','52c2699b-b628-4499-83d4-d478f7f9c902','35dc55a7-03f7-432b-82a9-189fd1748ce0',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('01944f1d-36e7-4cb4-baf7-07b09daef721','6631457d-6680-4faa-aa2b-1e7e21d12bd4','35dc55a7-03f7-432b-82a9-189fd1748ce0',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9f62175e-90ae-4cb4-a56c-879329fde0ee','73bba7e2-640f-48da-b681-64d79c2ae9e0','35dc55a7-03f7-432b-82a9-189fd1748ce0',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('05c0419b-7489-4c34-9e11-e8fea74a9db6','998ed6be-f894-4d11-bde8-22e46900a926','35dc55a7-03f7-432b-82a9-189fd1748ce0',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('20640ceb-b933-45e2-a6a1-422a3c654718','1d67d321-d82e-415e-8297-b24427aa46ae','35dc55a7-03f7-432b-82a9-189fd1748ce0',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9faf6406-4639-4e7d-b43d-1ccad540b307','8239b53c-b2c4-480d-a8fa-2f4660c678be','35dc55a7-03f7-432b-82a9-189fd1748ce0',50.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','35dc55a7-03f7-432b-82a9-189fd1748ce0');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('8337016f-d017-4fef-b5c2-574d4967cb2d',N'Canh kim chi thịt bò',N'Canh kim chi thịt bò là một món ăn như vậy và dường như nó xuất hiện trong mọi bữa ăn hằng ngày. Vị chua cay của kim chi kết hợp cùng vị ngọt của thịt bò đánh thức vị giác khiến cho món ăn trở nên thơm ngon, hấp dẫn và giàu dinh dưỡng.',15,2,'https://daotaobeptruong.vn/wp-content/uploads/2020/09/canh-kim-chi-thit-bo.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e80528f3-f463-411e-9ce5-1a79e645cfba',1,N'Rã đông thịt bò Fuji bằng cách ngâm nguyên gói thịt vào nước lạnh trong khoảng 5-7 phút. Sau đó cắt túi, lấy thịt đặt lên đĩa có lót khăn sạch để thấm hết nước.','','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8e8b84b5-2587-4177-8f1b-2c0d8c13acb7',2,N'Thái thịt bò thành những lát mỏng ngang thớ thịt. Ướp thịt bò với 1 muỗng canh đường, 1 muỗng canh hạt nêm, 0.5 muỗng cà phê hạt tiêu, 0.5 muỗng canh dầu ăn trong khoảng 15 phút.','','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8b620468-3d38-4d0a-8ce8-0a685d35e84c',3,N'Tỏi tây rửa sạch, thái lát chéo. Nấm kim châm cắt chân, rửa sạch, để ráo. Đậu phụ cắt miếng vuông vừa ăn. Kim chi cắt thành khúc khoảng 5cm. Hành khô bóc vỏ, thái nhỏ. Tỏi bỏ vỏ, rửa sạch rồi đập dập.','','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('324c3470-ec07-467d-a154-599532270b7c',4,N'Đun nóng chảo ở mức nhiệt vừa. Khi chảo nóng, cho 2 muỗng canh dầu ăn vào. Khi dầu nóng, cho hành vào phi thơm. Cho thịt bò vào xào ở mức nhiệt lớn tới khi vừa chín. Múc ra tô và để riêng sang một bên.','','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6cc273b9-44e9-4ecd-9da5-55e07b877c19',5,N'Tiếp tục phi thơm tỏi và cho kim chi vào xào khoảng 3 phút. Sau đó cho thêm nước lọc vào đun. Khi canh sôi, cho thịt bò, nấm kim châm, đậu phụ vào. Nêm nếm gia vị gồm muối, hạt nêm rau củ và ớt bột Hàn Quốc để món canh vừa theo khẩu vị. Sau khi canh sôi lại một lát thì tắt bếp.','','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fc63c1b9-e0aa-468e-9740-cb5e1cf281e3',6,N'ăn','','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('03dce962-daec-4992-9e9a-fc6b286fa5f9','8337016f-d017-4fef-b5c2-574d4967cb2d','a4546e0c-0056-4e69-8f59-e7fe7f041d42',300.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ececf94b-6a23-4fe7-ab5f-18f5259d9fdd','8337016f-d017-4fef-b5c2-574d4967cb2d','9181d60a-68b9-44fc-9f16-854d5c2cc7a4',300.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e9248eba-c2e1-4356-8621-e9faf8a5a052','8337016f-d017-4fef-b5c2-574d4967cb2d','ea8e4f8b-a9ee-4617-a102-54f1cfd3fd9c',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a56d0397-482c-4330-b133-bdee8c7a302a','8337016f-d017-4fef-b5c2-574d4967cb2d','411d087b-0dc8-4626-a256-99e16604766b',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c35aae8f-555f-4f0c-b31b-a63861b05e1b','8337016f-d017-4fef-b5c2-574d4967cb2d','d938f228-5967-4e19-b432-34cf16837fb4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1911a20f-fec3-48a1-8f1b-bf1ea1830b4c','8337016f-d017-4fef-b5c2-574d4967cb2d','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('12546a06-6db8-408d-9ae7-ded54d00eb24','92df7117-d1fa-420a-9771-6d7f54fe5d33','8337016f-d017-4fef-b5c2-574d4967cb2d',290.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b614218d-6b63-4331-ba09-85599c7d78cc','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','8337016f-d017-4fef-b5c2-574d4967cb2d',220.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8be340ec-f6b7-4406-bf13-58c3fccc8add','71c34c3c-18da-4745-8b7d-4774800170ec','8337016f-d017-4fef-b5c2-574d4967cb2d',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1ca90973-aa9a-401a-8020-6e162bacda54','52c2699b-b628-4499-83d4-d478f7f9c902','8337016f-d017-4fef-b5c2-574d4967cb2d',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('17ce5541-a4b7-429a-9f3c-94914d12b10b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','8337016f-d017-4fef-b5c2-574d4967cb2d',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f1619fde-8323-4b35-84a7-53e03ab2d6aa','73bba7e2-640f-48da-b681-64d79c2ae9e0','8337016f-d017-4fef-b5c2-574d4967cb2d',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('16a60b12-d741-4f67-b8b8-0d183880ed74','998ed6be-f894-4d11-bde8-22e46900a926','8337016f-d017-4fef-b5c2-574d4967cb2d',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('24c35c3f-6538-49d6-887f-df0a1de49e1d','1d67d321-d82e-415e-8297-b24427aa46ae','8337016f-d017-4fef-b5c2-574d4967cb2d',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d8952dd9-1fa7-4797-bc53-1d6372c838ea','8239b53c-b2c4-480d-a8fa-2f4660c678be','8337016f-d017-4fef-b5c2-574d4967cb2d',100.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','8337016f-d017-4fef-b5c2-574d4967cb2d');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('94cac5b7-52b6-4d06-afac-e365be66c086',N'Canh gà hầm củ sen',N'Canh gà hầm củ sen có cách nấu và thành phần nguyên liệu đơn giản nhưng giàu dinh dưỡng. Món canh này được xem như một bài thuốc dân gian dùng để bồi bổ sức khỏe, tăng cường sức đề kháng nhất là cho những người vừa ốm dậy, trẻ nhỏ và người lớn tuổi.',20,2,'https://daotaobeptruong.vn/wp-content/uploads/2019/11/canh-ga-ham-cu-sen.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c7890595-97b9-4ce8-a1fa-9c39bf701b54',1,N'Đầu tiên, bạn chà xát muối lên bề mặt thịt gà, rửa sạch với nước để khử sạch mùi tanh. Để gà ráo bớt nước, bạn tiến hành chặt thành miếng nhỏ vừa ăn cho vào bát lớn.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aa77741e-7fbb-403c-bb99-9c62d2cfc35f',2,N'Sau đó, bạn cho 1 muỗng cà phê hạt nêm, ½ muỗng cà phê nước mắm vào trong bát thịt gà, trộn đều. Để đảm bảo món canh gà hầm củ sen thơm ngon đậm đà, hấp dẫn người ăn, bạn cần ướp thịt gà trong vòng khoảng 15 – 20 phút.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c99cd1ed-221d-4c58-9b05-819c55eee9b5',3,N'Tiếp đến, bạn cho nấm hương vào ngâm trong bát nước nóng. Khi nấm nở mềm, bạn cắt bỏ phần gốc rồi rửa sạch, để trên rổ cho ráo nước.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1d12622a-a39f-4353-9c3d-cb69d1e6404b',4,N'Tiếp theo, bạn cạo vỏ củ cà rốt, rửa sạch, cắt thành những miếng nhỏ vừa ăn. Lưu ý, các bạn có thể tỉa hoa cho cà rốt để món canh thêm phần đẹp mắt, hấp dẫn.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d5054470-0aeb-4e30-ad87-dfd80dba3ca0',5,N'Với củ sen, bạn cạo lớp vỏ bên ngoài, rửa sạch rồi cắt thành lát vừa ăn. Mẹo đơn giản trong cách nấu canh gà hầm củ sen giúp củ sen không bị thâm màu là khi vừa cắt xong bạn cho vào ngâm ngay trong âu nước có pha ít muối và giấm gạo.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6e06a083-c91e-4282-8e19-c63352810b8a',6,N'Nhặt bỏ lá úa vàng của rau mùi, hành lá, rửa sạch với nước muối pha loãng, cắt nhuyễn là bạn đã hoàn tất bước sơ chế trong cách nấu canh gà hầm củ sen.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d0bd67fa-26e0-4f16-8135-997faf181b07',7,N'Sau đó, bạn bắc nồi hầm lên bếp đun nóng, cho thịt gà đã ướp vào xào săn lại rồi đổ lượng nước vừa đủ, đun sôi.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5cf7b716-c5ff-4404-b872-8485c7dfc20c',8,N'Khi nước sôi, bạn cho củ sen, cà rốt và nấm hương vào nồi nấu cùng. Lúc này, bạn điều chỉnh lửa nhỏ, nồi canh sôi lại một lần nữa thì nên nếm lại gia vị cho vừa ăn là cách nấu canh gà hầm củ sen ngon đơn giản mà không phải ai cũng biết.','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5920c702-40d5-410d-a80b-93750d085b82',9,N'ăn','','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('29aea254-9150-4a59-9ae7-5c661630bbfb','94cac5b7-52b6-4d06-afac-e365be66c086','6d627c8d-bee4-435b-9a5c-e897ed94646e',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b439d136-8357-4067-b2dd-ab22163e2786','94cac5b7-52b6-4d06-afac-e365be66c086','b7a9e6be-ebdf-4162-a4bf-aeb3db6ec5f0',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0e33bc1f-2158-4399-bcaa-35d026df951b','94cac5b7-52b6-4d06-afac-e365be66c086','658e2b15-5958-4b7f-9840-3ac70c421730',10.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8b928e24-b13b-44aa-9f53-5f5e33ae0088','94cac5b7-52b6-4d06-afac-e365be66c086','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('673119cd-e333-4a47-b214-45f782b877de','94cac5b7-52b6-4d06-afac-e365be66c086','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f7ff00c4-f79f-4193-8c5b-950918416494','92df7117-d1fa-420a-9771-6d7f54fe5d33','94cac5b7-52b6-4d06-afac-e365be66c086',360.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bcae7b65-a225-44d0-8017-2c794cea2e33','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','94cac5b7-52b6-4d06-afac-e365be66c086',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1509741f-1031-4f3f-b4ea-5fa3bb63949f','71c34c3c-18da-4745-8b7d-4774800170ec','94cac5b7-52b6-4d06-afac-e365be66c086',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a5d19411-fa51-4d8f-b9c7-d83721037e84','52c2699b-b628-4499-83d4-d478f7f9c902','94cac5b7-52b6-4d06-afac-e365be66c086',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('581ef40f-0b34-4be1-aebf-d60548ff4b11','6631457d-6680-4faa-aa2b-1e7e21d12bd4','94cac5b7-52b6-4d06-afac-e365be66c086',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0ab60687-0b6c-431f-8095-4caa93e49981','73bba7e2-640f-48da-b681-64d79c2ae9e0','94cac5b7-52b6-4d06-afac-e365be66c086',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6eb634ae-9edf-457e-8adf-7fd711c1a71e','998ed6be-f894-4d11-bde8-22e46900a926','94cac5b7-52b6-4d06-afac-e365be66c086',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('94d5bfed-7a6b-4550-86ac-6eb21cdc2293','1d67d321-d82e-415e-8297-b24427aa46ae','94cac5b7-52b6-4d06-afac-e365be66c086',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6d00dec6-7600-45d4-b213-c8aa825a30f5','8239b53c-b2c4-480d-a8fa-2f4660c678be','94cac5b7-52b6-4d06-afac-e365be66c086',90.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','94cac5b7-52b6-4d06-afac-e365be66c086');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('188e2efc-4b52-4ac3-8aba-4f170ba1a55e',N'Canh ngao mồng tơi',N'Với ngày thời tiết nắng nóng thì một tô canh ngao nấu với rau mồng tơi thanh mát sẽ giúp người ăn cảm thấy dễ chịu. Món canh có vị ngọt từ ngao, vị thanh và thơm từ rau mồng tơi có tính giải nhiệt cao, rất thích hợp cho bữa cơm gia đình vào mùa hè.',35,2,'https://cdn.tgdd.vn/2021/01/CookRecipe/GalleryStep/thanh-pham-34.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2516155a-911b-441f-8e50-bae13d8eea71',1,N'Ngao mua về loại bỏ con chết, ngâm ngao trong nước khoảng 2 tiếng có thêm một vài miếng ớt để cho ngao nhanh mở miệng và nhả sạch cát, chà sạch vỏ rồi rửa lại bằng nước sạch, để ráo nước.','','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c1d5d80c-3a5e-4935-891a-42d0e63090b0',2,N'Bắc nồi lên bếp, cho 500ml nước vào, khi nước sôi, cho ngao vào nồi cùng 2 muỗng cà phê muối, đậy nắp và luộc cho đến khi ngao mở miệng và chín đều.','','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f4a49c5e-0f78-41c4-922e-e040f7ab3a36',3,N'Sau khi luộc, bạn vớt ngao ra, tách thịt ngao ra khỏi vỏ, ngâm trong tô nước lạnh thêm 5 phút nữa rồi vớt ra và để ráo nước. Đối với phần nước luộc, bạn đợi cho cát lắng hết xuống đáy rồi từ từ đổ ra tô, sau đó bỏ phần cát đi, rửa sạch nồi rồi cho nước luộc vào lại.','','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('be444f9b-4d4f-4cd8-b5be-5152c7bfc96f',4,N'Bạn nhặt lá sâu, dập nát, ngâm rau mồng tơi trong nước muối loãng 10 phút rồi vớt ra và để ráo. Khi rau ráo nước, bạn cắt rau thành từng đoạn vừa ăn.','','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('730592e4-09bc-4e40-a256-a444db9869ab',5,N'Bạn nấu sôi nước luộc ngao, sau đó, cho ngao vào nấu 2 phút rồi cho hết rau mồng tơi vào nấu cùng trên lửa vừa. Sau khoảng 3 phút nấu, canh sôi, bạn hớt lớp bọt trên mặt rồi nêm canh với 1 muỗng cà phê hạt nêm là hoàn thành.','','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b75a2f24-a052-471d-ac58-37d4e7b17b59',6,N'an','','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('729d3045-bc24-48de-99b3-c3486a6857f4','188e2efc-4b52-4ac3-8aba-4f170ba1a55e','df069702-6f47-45ec-b135-21085fca5e98',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('44b9827c-62a5-42ef-85e7-fd6c1a24ffc4','188e2efc-4b52-4ac3-8aba-4f170ba1a55e','5ffe71b3-62dc-4715-a3a2-eeaad1ca7598',300.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('54e86b0b-3bad-4072-87d5-cd0f4b3b9add','188e2efc-4b52-4ac3-8aba-4f170ba1a55e','2ee16117-3cf7-472f-9485-4ba4ca94be9d',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0bd8a184-6dbb-461d-82c5-712fcbc9640d','188e2efc-4b52-4ac3-8aba-4f170ba1a55e','35141130-f290-471b-aeb8-20d3c0e529ae',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('02ff20cb-3e1a-4aaa-9801-666b738f4c7d','92df7117-d1fa-420a-9771-6d7f54fe5d33','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',320.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('18b457ca-c1df-4851-a76d-12e99d673d1e','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',240.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1226d82a-b6b1-4a47-a8ee-e3908d7e74d9','71c34c3c-18da-4745-8b7d-4774800170ec','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c271c117-76ac-4ed6-b361-2b13dbeccd4f','52c2699b-b628-4499-83d4-d478f7f9c902','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('08bb3928-8368-4d68-9290-101521094dd9','6631457d-6680-4faa-aa2b-1e7e21d12bd4','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f7aff05d-82ac-4b7e-b04f-ce3485b6d368','73bba7e2-640f-48da-b681-64d79c2ae9e0','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7eec2916-a65f-4e8a-a989-29d1650587d9','998ed6be-f894-4d11-bde8-22e46900a926','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0de3ef37-eb81-41b3-abb3-27cd50a13479','1d67d321-d82e-415e-8297-b24427aa46ae','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8d9ed271-6478-4c68-bd81-cb7755409e21','8239b53c-b2c4-480d-a8fa-2f4660c678be','188e2efc-4b52-4ac3-8aba-4f170ba1a55e',100.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','188e2efc-4b52-4ac3-8aba-4f170ba1a55e');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('12a67e9b-ac89-4f94-89e7-827eea023337',N'Canh bò hầm măng tươi',N'Bắp bò hoa chần qua nước sôi, rửa sạch, cắt khúc vừa ăn rồi hầm chín với ít gia vị. Sau đó, cho măng đã chần vào nồi bắp bò đang hầm rồi nấu chín, nêm lại gia vị và cho thêm lát ớt, hành hoa để món ăn được dậy mùi thơm là hoàn thành cách nấu canh bò hầm măng tươi bổ dưỡng.',30,1,'https://daotaobeptruong.vn/wp-content/uploads/2015/07/bo-ham-mang-tuoi.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('265f7370-f974-44e8-8e33-d7bbf2619603',1,N'Bắp bò hoa rửa sạch, thái khúc vừa ăn. Chần sơ qua nước sôi, rửa lại bằng nước sạch rồi hầm chín với ít gia vị.','','12a67e9b-ac89-4f94-89e7-827eea023337');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('08c62c64-141c-4bc9-8e23-894e3b1d4de6',2,N'Măng tươi bào mỏng, rửa sạch rồi chần sơ qua nước sôi.','','12a67e9b-ac89-4f94-89e7-827eea023337');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2861335d-9cce-46e2-939c-77528d4fd3ab',3,N'Cho măng đã chần vào nồi bắp bò đang hầm rồi nấu chín, nêm lại gia vị vừa ăn là được.','','12a67e9b-ac89-4f94-89e7-827eea023337');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('823c26da-943b-4244-8a55-beebbfa5673f',4,N'Thêm ít lát ớt và hành lá để món ăn dậy mùi thơm ngon.','','12a67e9b-ac89-4f94-89e7-827eea023337');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ecf64c64-ec74-4872-8ca5-f284bd00b41a',5,N'ăn','','12a67e9b-ac89-4f94-89e7-827eea023337');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c3b91b34-6487-4150-bd0a-f9b22778b8de','12a67e9b-ac89-4f94-89e7-827eea023337','a4546e0c-0056-4e69-8f59-e7fe7f041d42',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d1b877ad-3fc6-4d01-b9d6-56a312c4eecc','12a67e9b-ac89-4f94-89e7-827eea023337','ae880451-0986-4db9-9185-8f7855d00c57',300.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a1aad703-ac91-4a12-98a4-430b4ec60491','92df7117-d1fa-420a-9771-6d7f54fe5d33','12a67e9b-ac89-4f94-89e7-827eea023337',400.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('398fd45a-ada1-4380-8921-0f643be9bf1d','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','12a67e9b-ac89-4f94-89e7-827eea023337',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('eca4fea3-eae4-49b2-ae09-1cb2f7d50579','71c34c3c-18da-4745-8b7d-4774800170ec','12a67e9b-ac89-4f94-89e7-827eea023337',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6e005bc9-c5b7-462d-b346-d4f37af28bd7','52c2699b-b628-4499-83d4-d478f7f9c902','12a67e9b-ac89-4f94-89e7-827eea023337',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e7b4a633-0c69-4342-9e62-52418510619e','6631457d-6680-4faa-aa2b-1e7e21d12bd4','12a67e9b-ac89-4f94-89e7-827eea023337',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('97bfc5ff-43ad-49c2-82b1-9e86548c7199','73bba7e2-640f-48da-b681-64d79c2ae9e0','12a67e9b-ac89-4f94-89e7-827eea023337',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('174f00be-3922-44a9-90ff-b18d9696dac6','998ed6be-f894-4d11-bde8-22e46900a926','12a67e9b-ac89-4f94-89e7-827eea023337',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7a6ef55a-e038-4e92-91c4-643e922220a2','1d67d321-d82e-415e-8297-b24427aa46ae','12a67e9b-ac89-4f94-89e7-827eea023337',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8c0226fd-e554-4634-aab5-61db887014ab','8239b53c-b2c4-480d-a8fa-2f4660c678be','12a67e9b-ac89-4f94-89e7-827eea023337',56.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','12a67e9b-ac89-4f94-89e7-827eea023337');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('40ffa8c1-16d5-4d4e-9b35-83044e6f715d',N'Canh cà tím nấu đậu',N'Canh cà tím nấu đậu phụ kết hợp thịt ba chỉ, lá lốt, mẻ, nghệ là món ăn đặc trưng của vùng Bắc Trung Bộ. Món canh mang màu sắc hấp dẫn, vị dịu ngọt tự nhiên mát mẻ mùa hè. Tin chắc cả nhà sẽ mê đắm đuối yêu cầu bạn thực hiện thường xuyên.',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208268-canh-ca-dau-thirt-ba-chi.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('595887ac-777e-4849-b84e-6774f0e07d87',1,N'Cà tím cắt thành các miếng vừa ăn ngâm vào nước muối loãng 10 phút sau đó rửa sạch, để ráo. Hành lá, tía tô, lá lốt nhặt, rửa sạch thái nhỏ. Hành tỏi bóc vỏ, băm nhỏ.','','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7b4636cc-a5f2-45fa-9d31-cca85103114d',2,N'Thịt ba chỉ chà xát muối chanh, rửa sạch thái thành các miếng vừa ăn. Ướp thịt với 1 thìa canh nước mắm, 1 thìa cà phê hạt nêm, ít tiêu xay trộn đều để 10 phút cho thấm gia vị.','','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fcd968a9-6cc4-46e9-bed2-3a4ae955166b',3,N'Nghệ tươi rửa sạch, giã nhỏ lọc lấy nước cốt nhỏ vào vài giọt chanh để giữ màu vàng của nghệ. Đậu phụ rửa sạch, thái miếng vừa ăn, chiên vàng giòn các mặt. Cà tím bỏ vào rán sơ rồi vớt ra để ráo dầu.','','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7e2b32e9-a9fb-4c05-8e13-5a59a65e4229',4,N'Đặt nồi lên bếp cho vào 2 thìa canh dầu ăn phi thơm tỏi, hành băm. Tiếp theo cho vào nồi 1 thìa canh mắm tôm, bỏ thịt ba chỉ vào xào săn lại. Tiếp tục cho cà tím vào đảo đều. Đổ vào khoảng 1.5 lít nước đun sôi.','','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a21b1a30-0704-4e28-a057-7e372f12c47e',5,N'Khi nước sôi bạn cho đậu phụ vào, thêm nước cốt mẻ, nước cốt nghệ, đường, bột ngọt, nước mắm, hạt nêm cho vừa miệng. Nấu thêm 5 phút thì cho hành lá, tía tô, lá lốt, vài lát ớt vào là hoàn thành.','','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3dba3bc6-0e45-4563-a1d8-9ab5da7e7572',6,N'xong','','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('831104c9-5bc0-4293-a6ac-a1e5e119c035','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','f9c9fd62-d998-4e02-b025-218aefa09fba',5.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('92ee3502-940a-4d76-87bd-ba9032cbeccd','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','ea8e4f8b-a9ee-4617-a102-54f1cfd3fd9c',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6e213198-db2e-44e0-8150-6beb6529a0f6','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','d7bf2767-ba8f-495e-bf45-2481c3831f1f',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a3011ebc-dfb4-4f8a-b446-a96dc1c5c5ed','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','334b9883-f828-4e6e-9f70-6ac77c1a6adf',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('166f3716-72e7-4bb8-b788-dec0efdac269','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6bcfd7a3-86ba-4d92-a379-8f4b1c66e811','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','fceda5b2-9c26-4a06-88e3-f508837891c0',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('74e0e49a-7b18-4337-aed0-1a16601db4a3','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','35141130-f290-471b-aeb8-20d3c0e529ae',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0fa74a23-52ed-4f57-b55b-b32fb3330903','40ffa8c1-16d5-4d4e-9b35-83044e6f715d','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c5c009bb-4690-435c-b6d5-42fa0fb74245','92df7117-d1fa-420a-9771-6d7f54fe5d33','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',350.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d7f68eef-2a5a-4afe-9210-6a4d659b9bb2','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a2a9405e-e983-46c8-a202-5419835fa914','71c34c3c-18da-4745-8b7d-4774800170ec','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a8ea743d-bd96-49af-bf8b-3478220930ef','52c2699b-b628-4499-83d4-d478f7f9c902','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2911679a-0a6a-4b0b-a135-4591a25beeec','6631457d-6680-4faa-aa2b-1e7e21d12bd4','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cecf1625-4a25-48fa-ac18-56fe82a0a457','73bba7e2-640f-48da-b681-64d79c2ae9e0','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e6ad7457-bb0b-48af-88ef-3226958ce3d2','998ed6be-f894-4d11-bde8-22e46900a926','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c1021975-d1ba-4520-93ea-20f348d8c753','1d67d321-d82e-415e-8297-b24427aa46ae','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1941b559-8c79-4520-bde4-41b041f77459','8239b53c-b2c4-480d-a8fa-2f4660c678be','40ffa8c1-16d5-4d4e-9b35-83044e6f715d',49.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','40ffa8c1-16d5-4d4e-9b35-83044e6f715d');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('7bd45858-3fa6-45f9-87ec-02a97b64764b',N'Canh cà tím nấu mẻ',N'Canh cà tím om mẻ là món ăn dân dã được nhiều người yêu thích tìm hiểu công thức. Món ăn bất chấp thời tiết nóng bức hay mưa lạnh đều mang đến cảm giác ngon miệng, hấp dẫn. Thỉnh thoảng thay đổi khẩu vị cho gia đình với món ăn này để tạo thêm sự mới lạ.',30,2,'https://cdn.yeutre.vn/medias/uploads/208/208270-ca-tim-om-me.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b54bb8ec-3389-41e0-90c0-6c5c6af85a40',1,N'Thịt ba chỉ rửa sạch thái miếng vuông dài. Bỏ thịt vào tô ướp cùng 0.5 thìa cà phê muối, 1 thìa cà phê hạt nêm trộn đều ướp 10 phút.','','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9ee91ed1-09e2-48cb-8ec4-dbcd6078442c',2,N'Cà tím bỏ cuống, thái miếng vừa ăn ngâm vào nước muối loãng và 1 thìa canh giấm khoảng 15 phút. Sau đó vớt ra rửa sạch lại với nước lạnh. Cà chua rửa sạch thái hạt lựu. Đậu hũ chiên vàng giòn các mặt. Hành lá, tía tô, lá lốt rửa sạch thái nhỏ.','','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d008c72a-eddd-403b-ad16-9c42d71d2968',3,N'Bắc nồi lên bếp cho vào ít dầu ăn phi thơm hành tím băm. Tiếp theo cho thịt ba chỉ vào xào săn rồi cho cà tím vào xào cùng. Nêm nếm 1 thìa cà phê bột ngọt, 1 thìa canh nước mắm, 0.5 thìa cà phê muối, 1 thìa cà phê hạt nêm. Đến khi cả săn lại thì đổ nước xâm xấp mặt cà đun sôi.','','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('60cc5d3a-4246-4ab8-92b1-ee5637a3aab4',4,N'Bắc chảo khác cho vào 1 thìa canh dầu ăn phi thơm ít hành bỏ cà chua vào nấu đến khi chín thì lấy xuống cho vào chén. Tiếp tục dùng chảo cho vào ít dầu ăn phi thơm ít hành băm còn lại. Tiếp theo cho vào 2 thìa canh cơm mẻ vào nấu sôi thì tắt bếp.','','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e2175313-a80c-4761-906b-608a61c5c38d',5,N'Đổ cà chua, mẻ chưng, đậu hũ vào nồi cà tím. Om nhỏ lửa đến khi cà chín mềm thì nêm nếm lại cho vừa ăn, bỏ hành lá, lá lốt, tía tô vào.','','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b554099a-8b8f-4bd3-a0ca-3780e0276a01',6,N'xong','','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ec31745d-e64f-4384-9d11-124b74560cb4','7bd45858-3fa6-45f9-87ec-02a97b64764b','f9c9fd62-d998-4e02-b025-218aefa09fba',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('abb18065-1c2c-4c65-99f8-8b84426e89d3','7bd45858-3fa6-45f9-87ec-02a97b64764b','ea8e4f8b-a9ee-4617-a102-54f1cfd3fd9c',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('09698dac-14d6-4ea8-9c4f-78884866fc59','7bd45858-3fa6-45f9-87ec-02a97b64764b','d7bf2767-ba8f-495e-bf45-2481c3831f1f',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('868cadf2-5f55-452c-acdd-aa1b785c256d','7bd45858-3fa6-45f9-87ec-02a97b64764b','770f3d34-b289-44eb-94fd-7b7bb598181d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c48462a4-7f42-4592-bd36-e6bee3daaba9','7bd45858-3fa6-45f9-87ec-02a97b64764b','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ad0f4d71-88e4-4a9c-853c-51201d1260ea','7bd45858-3fa6-45f9-87ec-02a97b64764b','0b4bcfee-3d15-435a-abe2-8df4f594b11d',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('df8bc97e-5b0f-4fd4-b9a3-34e643133dd1','92df7117-d1fa-420a-9771-6d7f54fe5d33','7bd45858-3fa6-45f9-87ec-02a97b64764b',360.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a02c29b4-3b8b-48c6-bb67-dca7ecde93a3','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','7bd45858-3fa6-45f9-87ec-02a97b64764b',280.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8e11fd7c-8acc-411e-8c6d-67dbfa516c18','71c34c3c-18da-4745-8b7d-4774800170ec','7bd45858-3fa6-45f9-87ec-02a97b64764b',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4ca59663-d4e3-45a8-aaca-545fa28659e9','52c2699b-b628-4499-83d4-d478f7f9c902','7bd45858-3fa6-45f9-87ec-02a97b64764b',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7a51fcd2-5217-4c7c-92a4-c286aa23c2bf','6631457d-6680-4faa-aa2b-1e7e21d12bd4','7bd45858-3fa6-45f9-87ec-02a97b64764b',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1761f819-9c07-402d-adec-b0d0340b3723','73bba7e2-640f-48da-b681-64d79c2ae9e0','7bd45858-3fa6-45f9-87ec-02a97b64764b',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8b5b8ed6-3855-4924-8d77-37556fbfa636','998ed6be-f894-4d11-bde8-22e46900a926','7bd45858-3fa6-45f9-87ec-02a97b64764b',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3d93b80a-aae2-46f2-a58b-e1092d3d5e37','1d67d321-d82e-415e-8297-b24427aa46ae','7bd45858-3fa6-45f9-87ec-02a97b64764b',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f6114fef-5a63-4636-86e0-6c3e18f6c596','8239b53c-b2c4-480d-a8fa-2f4660c678be','7bd45858-3fa6-45f9-87ec-02a97b64764b',60.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','7bd45858-3fa6-45f9-87ec-02a97b64764b');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('c91c2aa4-e12b-4fc8-b279-53c9d8720530',N'Canh cà tím nấu xương',N'Xương heo là nguyên liệu thường xuyên được kết hợp với các loại rau củ quả để nấu canh. Điển hình các món từ xương heo ngon có thể kể đến canh đu đủ hầm xương, canh bí đỏ nấu xương, canh củ quả nấu xương... Theo đó cà tím nấu xương có phần lạ miệng nhưng lại mang đến hương vị khó cưỡng.',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208272-canh-xuong-ca-ngon.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d99b397e-b37b-4aaf-9ed2-e8abfecb6cc8',1,N'Xương heo ngâm vào nước muối loãng 10 phút rồi vớt lên rửa sạch, để ráo nước. Ướp xương với 1 thìa canh hành tím băm, 1 thìa canh nước mắm, 2 thìa cà phê hạt nêm, 0.5 thìa cà phê bột ngọt. Trộn đều và ướp 20 phút cho gia vị thấm đều.','','c91c2aa4-e12b-4fc8-b279-53c9d8720530');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ed67e8b1-4e28-454b-8ef6-f0f60a907d8a',2,N'Cà tím cắt thành các miếng tròn có độ dầy 1 lóng tay ngâm vào nước muối loãng. Sau đó bạn vớt cà ra rửa sạch lại vài lần, để ráo nước. Hành lá cắt bỏ gốc, nhặt lá úa bỏ, rửa sạch, thái nhỏ.','','c91c2aa4-e12b-4fc8-b279-53c9d8720530');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d530ccf6-3575-49ca-8560-317bc9064dbe',3,N'Bắc nồi lên bếp cho vào 2 thìa canh dầu ăn phi thơm hành tím băm còn lại. Tiếp theo cho xương đã ướp vào xào săn trên lửa lớn khoảng 2 phút. Sau đó đổ vào nồi 1.5 lít nước đun sôi. Sau khi nước sôi bạn hạ nhỏ lửa ninh xương khoảng 20 phút liên tục hớt bọt cho nước dùng trong.','','c91c2aa4-e12b-4fc8-b279-53c9d8720530');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('270689ef-77e2-4ec0-8d32-c7e3b3e4a518',4,N'Sau 20 phút bạn cho cà tím vào nêm nếm 1 thìa cà phê muối, 2 thìa cà phê hạt nêm, 1 thìa cà phê bột ngọt, 1 thìa cà phê đường. Nấu đến khi cà tím chín thì nêm nếm lại cho vừa ăn thả hành lá vào là xong.','','c91c2aa4-e12b-4fc8-b279-53c9d8720530');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2e4e03e5-1261-4c90-b629-6577ff9a8182',5,N'xong','','c91c2aa4-e12b-4fc8-b279-53c9d8720530');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2109ec74-0448-4454-873c-e507f603c7f9','c91c2aa4-e12b-4fc8-b279-53c9d8720530','f9c9fd62-d998-4e02-b025-218aefa09fba',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3c683975-32a8-4ddc-be2d-ef458c7ec7ac','c91c2aa4-e12b-4fc8-b279-53c9d8720530','1e26847c-49b3-44fe-8ef0-f844d5f9008e',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ea8e99aa-3d03-4d96-8973-3064ab175049','c91c2aa4-e12b-4fc8-b279-53c9d8720530','334b9883-f828-4e6e-9f70-6ac77c1a6adf',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e9828d2a-586d-48d9-9e0d-0f9f046887e5','c91c2aa4-e12b-4fc8-b279-53c9d8720530','16eda913-da50-4711-90c4-7bbbf507e1d1',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ffd85bd9-79f3-4b36-8bed-363a554288fb','92df7117-d1fa-420a-9771-6d7f54fe5d33','c91c2aa4-e12b-4fc8-b279-53c9d8720530',320.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d1d026b7-bf6c-41f5-b6ad-7d60af4d1c1c','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','c91c2aa4-e12b-4fc8-b279-53c9d8720530',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3ed77f6d-d49b-4300-a533-34d764a94b19','71c34c3c-18da-4745-8b7d-4774800170ec','c91c2aa4-e12b-4fc8-b279-53c9d8720530',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e8d7110a-0e59-4a53-8155-0c442765f091','52c2699b-b628-4499-83d4-d478f7f9c902','c91c2aa4-e12b-4fc8-b279-53c9d8720530',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4ec5d027-2cff-4786-9949-9e301df1b18f','6631457d-6680-4faa-aa2b-1e7e21d12bd4','c91c2aa4-e12b-4fc8-b279-53c9d8720530',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f28cd0f5-34fc-4516-9425-8d39aa8e94b7','73bba7e2-640f-48da-b681-64d79c2ae9e0','c91c2aa4-e12b-4fc8-b279-53c9d8720530',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('11d9d056-74d9-4289-916b-746d9706348f','998ed6be-f894-4d11-bde8-22e46900a926','c91c2aa4-e12b-4fc8-b279-53c9d8720530',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cbed978e-533b-49ca-a3e4-4ab03c5f9140','1d67d321-d82e-415e-8297-b24427aa46ae','c91c2aa4-e12b-4fc8-b279-53c9d8720530',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('39dd5520-ac6e-48a0-98a6-46c81a2c69b5','8239b53c-b2c4-480d-a8fa-2f4660c678be','c91c2aa4-e12b-4fc8-b279-53c9d8720530',50.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','c91c2aa4-e12b-4fc8-b279-53c9d8720530');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','c91c2aa4-e12b-4fc8-b279-53c9d8720530');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('49e4d999-e8f9-447f-8ad5-a02262afb53e',N'Canh cà tím nấu tôm',N'Canh cà tím nấu tôm là món ăn dân dã, bình dị giúp thanh lọc cơ thể. Phần tôm sẽ giúp cho nước canh ngọt tự nhiên hơn. Món canh dễ ăn có thể kết hợp thêm với các món cá kho tiêu , thịt chiên, sườn ram chua ngọt... để tạo nên bữa cơm hấp dẫn.',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208274-canh-ca-tim-tom.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('865b615e-5e18-47e8-8e42-19244c024e43',1,N'Cà tím cắt thành các khúc dài hoặc tròn tùy thích ngâm vào nước muối pha loãng 10 phút. Tiếp theo rửa sạch cà để ráo nước. Lá é nhặt rửa sạch, để ráo. Tỏi bóc vỏ, băm nhỏ.','','49e4d999-e8f9-447f-8ad5-a02262afb53e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('662ddff8-2592-4a9d-8ecc-a31c6de3895e',2,N'Tôm bóc vỏ, lấy chỉ đen trên lưng bỏ, cho vào cối giã nhuyễn. Tiếp theo bỏ tôm vào tô ướp cùng 1 thìa cà phê hạt nêm, 0.5 thìa cà phê muối, ít tiêu, tỏi băm. Trộn đều các gia vị và để ướp 15 phút.','','49e4d999-e8f9-447f-8ad5-a02262afb53e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ef388e2e-752a-4e9b-9e13-6ca3346894f2',3,N'Bắc nồi lên bếp cho vào 2 thìa canh dầu ăn. Dầu nóng bỏ tỏi vào phi thơm vàng rồi đổ lượng nước vừa nấu canh vào. Nước sôi bạn vắt từng viên tôm bỏ vào nồi nêm nếm 2 thìa cà phê hạt nêm, 1 thìa cà phê muối, 1 thìa cà phê bột ngọt, 0.5 thìa cà phê đường.','','49e4d999-e8f9-447f-8ad5-a02262afb53e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b483650c-5644-425e-893b-1ef9c1a2a4d1',4,N'Cho cà tím vào nấu đến khi chín. Nêm nếm lại cho vừa miệng thì bỏ lá é vào rồi tắt bếp.','','49e4d999-e8f9-447f-8ad5-a02262afb53e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('54457de1-6362-4e5f-8562-3f942c5dd66f',5,N'xong','','49e4d999-e8f9-447f-8ad5-a02262afb53e');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('411dc1d7-024c-41e2-a1da-71a1dbec98fb','49e4d999-e8f9-447f-8ad5-a02262afb53e','f9c9fd62-d998-4e02-b025-218aefa09fba',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0b9b70e5-d277-4155-a87a-661095f04e8d','49e4d999-e8f9-447f-8ad5-a02262afb53e','469dd1e0-f903-4b82-ad7d-b1c8392f2d5b',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3cc93483-5b15-497f-9a85-ad3379c6fb3a','49e4d999-e8f9-447f-8ad5-a02262afb53e','a892ea5b-9b7f-469d-af3e-4caf369fc2c9',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ced93744-cb56-4dc2-912c-86e7a3744c50','49e4d999-e8f9-447f-8ad5-a02262afb53e','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7abea949-f1ce-46b3-9cb6-71ef6986dea1','92df7117-d1fa-420a-9771-6d7f54fe5d33','49e4d999-e8f9-447f-8ad5-a02262afb53e',350.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3c390918-1a9e-4db2-a722-19c32315786d','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','49e4d999-e8f9-447f-8ad5-a02262afb53e',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4aa0d249-bc47-48bc-98ce-1716ea57e722','71c34c3c-18da-4745-8b7d-4774800170ec','49e4d999-e8f9-447f-8ad5-a02262afb53e',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2737c41a-8bd9-4593-adb4-c6ae06a695ab','52c2699b-b628-4499-83d4-d478f7f9c902','49e4d999-e8f9-447f-8ad5-a02262afb53e',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('75a0efde-beaf-4a34-a082-b228d4dc1742','6631457d-6680-4faa-aa2b-1e7e21d12bd4','49e4d999-e8f9-447f-8ad5-a02262afb53e',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b3dcbdce-d0b5-4b24-a995-a95868d4cd80','73bba7e2-640f-48da-b681-64d79c2ae9e0','49e4d999-e8f9-447f-8ad5-a02262afb53e',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7ecdd148-6cd0-4a6f-81d8-8ffe54cae06a','998ed6be-f894-4d11-bde8-22e46900a926','49e4d999-e8f9-447f-8ad5-a02262afb53e',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('94a98897-eebe-4aa5-a44d-c53e8548d002','1d67d321-d82e-415e-8297-b24427aa46ae','49e4d999-e8f9-447f-8ad5-a02262afb53e',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1848e845-a061-4420-b92a-0cfd1c70469a','8239b53c-b2c4-480d-a8fa-2f4660c678be','49e4d999-e8f9-447f-8ad5-a02262afb53e',70.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','49e4d999-e8f9-447f-8ad5-a02262afb53e');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','49e4d999-e8f9-447f-8ad5-a02262afb53e');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('819471af-5232-4e82-8856-e9c911515f49',N'Canh cà tím chay',N'Cà tím chính là thực phẩm thường xuyên được sử dựng cho các món ăn chay. Cụ thể chúng có thể chế biến thành cà tím kho chay, cà tím xào , cà tím um... Các món ăn góp phần làm đa dạng các món ăn chay, giúp bạn thay đổi khẩu vị mỗi ngày. Theo đó canh cà tím chay cũng rất thích hợp cho người đang ăn kiêng phòng bệnh hay giảm cân duy trì vóc dáng thon thả.',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208276-mon-an-chay-tu-ca-tim.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('fad1c2f3-3449-4fb9-8345-98f6b381cc35',1,N'Cà tím rửa sạch, cắt khúc bỏ vào chậu nước muối loãng hòa 20ml giấm ngâm khoảng 20 phút. Bước này giúp cà không bị thâm đen. Sau đó vớt ra, rửa sạch, để ráo. Tiếp theo bỏ cà tím vào tô ướp với 1 thìa canh bột nghệ trộn đều khoảng 10 phút.','','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0189d597-28db-4892-ba29-c0dfff395106',2,N'Nấm hương ngâm vào nước ấm vài phút cho sạch bùn đất sau đó rửa sạch lại loại bỏ phần gốc. Lá lốt, tía tô rửa sạch thái nhỏ. Hành boa rô rửa sạch, thái nhỏ. Đậu hũ trắng thái miếng vuông chiên vàng giòn, để ráo dầu.','','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('93d0797d-8680-432e-b88d-32f99e054104',3,N'Bắc nồi lên cho vào 2 thìa canh dầu ăn. Dầu nóng cho đầu hành boa rô vào phi thơm dậy mùi. Tiếp theo cho cà tím, nấm hương vào xào đảo đều. Nêm nếm ít hạt nêm chay, muối, bột ngọt.','','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5d3473f3-17fb-487f-866f-838c057da7fc',4,N'Tiếp theo đổ vào 500ml nước nấu đến khi nước sôi thì cho đậu hũ chiên vào. Nêm nếm 1 thìa canh đường, 2 thìa canh nước tương, 0.5 thìa cà phê muối, 1 thìa canh hạt nêm chay. Om cà khoảng 15 phút thì hòa 20ml bột năng cùng ít nước đổ vào nồi. Nêm nếm lại cho vừa ăn thả lá hành boa rô, tía tô, lá lốt vào là hoàn thành.','','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3ec2e7f0-0abe-48c8-a0fe-f4e6301e06ed',5,N'xong','','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('13fefce7-9d1e-407b-be06-08d764ad21e5','819471af-5232-4e82-8856-e9c911515f49','f9c9fd62-d998-4e02-b025-218aefa09fba',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('28bb2c6f-890d-4871-a183-8b7fa3f9d5eb','819471af-5232-4e82-8856-e9c911515f49','658e2b15-5958-4b7f-9840-3ac70c421730',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bc989c22-ddb0-4a6b-91d5-2d8e7982b5dc','819471af-5232-4e82-8856-e9c911515f49','ea8e4f8b-a9ee-4617-a102-54f1cfd3fd9c',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('45d6fb31-7351-4c82-8e23-120c63396368','819471af-5232-4e82-8856-e9c911515f49','16eda913-da50-4711-90c4-7bbbf507e1d1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c13acabe-8b5a-4b4d-970c-17983d4a9056','819471af-5232-4e82-8856-e9c911515f49','fceda5b2-9c26-4a06-88e3-f508837891c0',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('65cd2845-d0c4-4703-9a60-7ad0f6a3b8ff','819471af-5232-4e82-8856-e9c911515f49','728aa51b-5fb9-43e9-9b9a-2208fdc3f979',20.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9a0a3d3f-9f17-4d7a-b8ec-6796561179ff','92df7117-d1fa-420a-9771-6d7f54fe5d33','819471af-5232-4e82-8856-e9c911515f49',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('01680c22-3e97-4c96-aefc-a832e8b3bcd1','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','819471af-5232-4e82-8856-e9c911515f49',290.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4a4ee13a-7f4e-46e5-b2bd-38d97b119ce5','71c34c3c-18da-4745-8b7d-4774800170ec','819471af-5232-4e82-8856-e9c911515f49',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0fa599e0-9890-49f5-8e4d-e112e8c8dc0a','52c2699b-b628-4499-83d4-d478f7f9c902','819471af-5232-4e82-8856-e9c911515f49',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9a3a92ad-26c8-4d43-a4f3-0c013b801ceb','6631457d-6680-4faa-aa2b-1e7e21d12bd4','819471af-5232-4e82-8856-e9c911515f49',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e77c0ed6-91b3-4ebd-ab38-6cea6119b78d','73bba7e2-640f-48da-b681-64d79c2ae9e0','819471af-5232-4e82-8856-e9c911515f49',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dcd7772f-4788-42c9-a7b5-543fd9720313','998ed6be-f894-4d11-bde8-22e46900a926','819471af-5232-4e82-8856-e9c911515f49',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('39cdef42-3553-4155-b222-296e839fc1df','1d67d321-d82e-415e-8297-b24427aa46ae','819471af-5232-4e82-8856-e9c911515f49',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a9ec8bde-c16b-49ff-85e4-b02c22b175e7','8239b53c-b2c4-480d-a8fa-2f4660c678be','819471af-5232-4e82-8856-e9c911515f49',56.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('c7557e8c-3575-4ec6-9851-47966f2ab424','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','819471af-5232-4e82-8856-e9c911515f49');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('923e989c-8fb9-4f4a-ad33-4e34d26d7057',N'Canh cà tím nhồi thịt',N'Cà tím nhồi thịt nấu canh là món ăn có phần nước ngọt thanh, phần thịt bùi béo thấm vị. Theo đó cách nấu món ăn cũng tương tự khổ qua nhồi thịt quen thuộc. Chỉ cần chuẩn bị vài nguyên liệu cơ bản bạn có thể hoàn tất món canh ngon nhanh chóng.',30,2,'https://cdn.yeutre.vn/medias/uploads/208/208278-canh-ca-tim-nhoi-thit.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c4bb4f8e-084b-4e35-b3b5-95f6b35a68fb',1,N'Cà tím rửa sạch cắt thành các khoanh tròn có bề dày khoảng 2 lóng tay. Ngâm cà vào nước muối loãng 5 phút sau đó vớt ra để ráo nước. Dùng thìa khoét 1 lỗ tròn lấy phần ruột cà tím ra. Lưu ý bạn có thể khoét thủng hoặc khoét 1 bên của miếng cà.','','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1f21f069-e257-4b80-b21d-dffe0f00d363',2,N'Nấm mèo ngâm nước ấm cho nở mềm rồi rửa sạch, băm nhỏ. Hành lá rửa sạch, thái nhỏ. Cà rốt gọt vỏ, rửa sạch, băm nhỏ.','','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a6b6d12e-70e6-4e69-8715-a9494a38baef',3,N'Bỏ vào tô thịt xay, nấm mèo, 0.5 phần hành lá, 1 thìa cà phê tỏi, cà rốt, 1 thìa cà phê tiêu xay, 2 thìa cà phê hạt nêm, 0.5 thìa cà phê bột ngọt, 0.5 thìa cà phê muối. Trộn đều tất cả nguyên liệu ướp khoảng 15 phút.','','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1ebb545f-2211-4ec6-8963-3ba6f61e8c77',4,N'Bạn nhồi phần thịt băm ướp vào các miếng cà tím thật chắc. Bắc chảo lên cho vào ít dầu chiên sơ để chúng săn chắc không rơi ruột ra.','','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0ca5a68f-7b56-4794-9458-33c6941672d4',5,N'Bắc nồi lên bếp cho vào ít dầu ăn phi thơm ít hành tím băm. Đổ lượng nước vừa phải vào nấu canh. Nước sôi cho cà tím vào nấu nêm nếm vừa ăn thì cho hành lá vào rồi tắt bếp.','','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8515ca56-5408-440f-99bd-a0bb99716dfc',6,N'xong','','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5f16e1ff-0d0d-4562-a3ac-6b62ea63f0a8','923e989c-8fb9-4f4a-ad33-4e34d26d7057','f9c9fd62-d998-4e02-b025-218aefa09fba',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eccb0ce7-b56d-41e3-b728-0088882428ca','923e989c-8fb9-4f4a-ad33-4e34d26d7057','47265f9c-9c95-41f7-a759-b0d2ab5ed398',250.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aa3164fa-9f41-4387-82d2-c7c82b5acfd7','923e989c-8fb9-4f4a-ad33-4e34d26d7057','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('473e9e60-16f4-4f54-aa89-d43f7938258e','923e989c-8fb9-4f4a-ad33-4e34d26d7057','16eda913-da50-4711-90c4-7bbbf507e1d1',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('84be4c45-b8bd-425e-954f-a4648a76c751','923e989c-8fb9-4f4a-ad33-4e34d26d7057','57f1e222-17f9-4269-bec7-77e501410e35',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0cedf3f7-be62-43b1-9ca5-36431fddcd64','923e989c-8fb9-4f4a-ad33-4e34d26d7057','334b9883-f828-4e6e-9f70-6ac77c1a6adf',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('93e3e9f9-f141-49d6-a671-ab2bdfca3beb','92df7117-d1fa-420a-9771-6d7f54fe5d33','923e989c-8fb9-4f4a-ad33-4e34d26d7057',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('72301ca0-d95f-49e1-acbd-0a7eef1b55af','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','923e989c-8fb9-4f4a-ad33-4e34d26d7057',320.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bb0c31a9-1691-4d9a-8197-837257ea79cc','71c34c3c-18da-4745-8b7d-4774800170ec','923e989c-8fb9-4f4a-ad33-4e34d26d7057',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a85c3c77-fb51-4992-acd3-767ef591cbc8','52c2699b-b628-4499-83d4-d478f7f9c902','923e989c-8fb9-4f4a-ad33-4e34d26d7057',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ccd94227-fe02-4e8c-9b75-23a69975aa04','6631457d-6680-4faa-aa2b-1e7e21d12bd4','923e989c-8fb9-4f4a-ad33-4e34d26d7057',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('402f5f88-ba7c-45a4-846c-f4c595885cf5','73bba7e2-640f-48da-b681-64d79c2ae9e0','923e989c-8fb9-4f4a-ad33-4e34d26d7057',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9b8b8619-0090-43e2-b9d4-e4b7409033ec','998ed6be-f894-4d11-bde8-22e46900a926','923e989c-8fb9-4f4a-ad33-4e34d26d7057',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ca08126d-a5e8-46f9-b679-ffcc6e28113f','1d67d321-d82e-415e-8297-b24427aa46ae','923e989c-8fb9-4f4a-ad33-4e34d26d7057',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f5e8e031-4f38-43a3-b9c5-e0b52663e472','8239b53c-b2c4-480d-a8fa-2f4660c678be','923e989c-8fb9-4f4a-ad33-4e34d26d7057',50.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','923e989c-8fb9-4f4a-ad33-4e34d26d7057');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('a19b80de-e607-48b2-a18b-e2f2c27a13d7',N'Canh cà tím thịt băm',N'Canh cà tím thịt băm từ lâu đã trở thành món ăn quen thuộc của các gia đình Việt. Bạn chỉ cần chuẩn bị cà tím, thịt băm, đậu hũ và ít lá lốt là món ăn đã sẵn sàng. Tin rằng món ngon từ cà tím sẽ khiến mọi người hài lòng nhờ càng ăn càng thích thú.',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208280-ca-tim-thit-bam.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('efc2dc1e-8c89-479a-ab1b-fe26654b60f3',1,N'Cà tím cắt thành các miếng vừa ăn ngâm vào nước muối loãng 10 phút sau đó rửa sạch, để ráo. Lá lốt, tía tô, hành lá nhặt, rửa sạch, thái nhỏ. Đậu hũ thái miếng vừa ăn chiên vàng giòn.','','a19b80de-e607-48b2-a18b-e2f2c27a13d7');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('83f9a893-b4cd-4d0c-a60b-08a52e4e78ce',2,N'Bắc nồi lên bếp cho vào ít dầu ăn phi thơm tỏi băm. Tiếp theo cho thịt băm vào xào săn, nêm nếm ít muối, hạt nêm. Tiếp theo cho đậu hũ chiên và cà tím vào xào cùng. Nêm gia vị 1 thìa cà phê hạt nêm, 1 thìa cà phê muối, 1 thìa cà phê bột nghệ, 0.5 thìa cà phê đường.','','a19b80de-e607-48b2-a18b-e2f2c27a13d7');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('614b6ca2-9d1b-45f6-a979-e800310382e8',3,N'Đổ khoảng 500ml nước vào nấu sôi. Nêm nếm lại cho vừa ăn thì cho hành, tía tô, lá lốt vào rồi tắt bếp.','','a19b80de-e607-48b2-a18b-e2f2c27a13d7');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cff63039-3d5c-4d09-91f0-392e313d93a7',4,N'Múc canh cà tím thịt bằm ra tô rắc thêm ít hạt tiêu. Món ăn chấm cùng nước mắm hoặc nước tương cay ăn cùng cơm trắng là hết sảy.','','a19b80de-e607-48b2-a18b-e2f2c27a13d7');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7fcaed87-e86b-4477-9663-3d1b3c2fd717',5,N'xong','','a19b80de-e607-48b2-a18b-e2f2c27a13d7');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d7c324c9-6885-4b48-979b-377ee0e99b21','a19b80de-e607-48b2-a18b-e2f2c27a13d7','f9c9fd62-d998-4e02-b025-218aefa09fba',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b5579719-430e-4071-9265-e8ffb8a6fab5','a19b80de-e607-48b2-a18b-e2f2c27a13d7','47265f9c-9c95-41f7-a759-b0d2ab5ed398',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3d2cdb23-9ef2-4f21-88e3-8c347afd5fb3','a19b80de-e607-48b2-a18b-e2f2c27a13d7','ea8e4f8b-a9ee-4617-a102-54f1cfd3fd9c',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9dbeae64-5b84-405a-b8e2-5f6d5b41df27','a19b80de-e607-48b2-a18b-e2f2c27a13d7','16eda913-da50-4711-90c4-7bbbf507e1d1',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6ce83917-086b-4a02-9977-90c01008cc5c','92df7117-d1fa-420a-9771-6d7f54fe5d33','a19b80de-e607-48b2-a18b-e2f2c27a13d7',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6ede91fa-4800-4eef-80eb-35dbafdb9f40','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','a19b80de-e607-48b2-a18b-e2f2c27a13d7',290.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a3d2ef26-299b-4f03-87b4-bb14c3fd127d','71c34c3c-18da-4745-8b7d-4774800170ec','a19b80de-e607-48b2-a18b-e2f2c27a13d7',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5983541b-c6d3-43fd-9c9f-24f49e85ad6f','52c2699b-b628-4499-83d4-d478f7f9c902','a19b80de-e607-48b2-a18b-e2f2c27a13d7',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cff6774f-df0b-4071-af60-b0605aac56b8','6631457d-6680-4faa-aa2b-1e7e21d12bd4','a19b80de-e607-48b2-a18b-e2f2c27a13d7',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cdf15f85-18b9-4e6b-b0e7-5ad7b7864e77','73bba7e2-640f-48da-b681-64d79c2ae9e0','a19b80de-e607-48b2-a18b-e2f2c27a13d7',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3cbb3eda-a412-449c-804f-9801ee8a7e16','998ed6be-f894-4d11-bde8-22e46900a926','a19b80de-e607-48b2-a18b-e2f2c27a13d7',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('016dc420-7529-467d-babe-280157037848','1d67d321-d82e-415e-8297-b24427aa46ae','a19b80de-e607-48b2-a18b-e2f2c27a13d7',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e7f1e845-1901-40b0-8181-77f200d10e9a','8239b53c-b2c4-480d-a8fa-2f4660c678be','a19b80de-e607-48b2-a18b-e2f2c27a13d7',60.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','a19b80de-e607-48b2-a18b-e2f2c27a13d7');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','a19b80de-e607-48b2-a18b-e2f2c27a13d7');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('ef56fa38-cc32-478b-b3a4-847391738cfa',N'Canh cà tím thịt bò',N'Canh cà tím thịt bò là món ăn giàu dinh dưỡng giúp cơ thể được tiếp theo năng lượng. Bên cạnh đó món ăn cũng rất tốt cho người thiếu máu, mệt mỏi. Bữa trưa không biết ăn món gì hãy tham khảo ngay cách nấu canh cà tím ngay dưới đây nhé!',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208282-ca-tim-canh-thit-bo.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('98183f96-7d24-4631-8422-2bdede125ef0',1,N'Cà tím thái miếng vừa ăn ngâm nước muối loãng 5 phút sau đó vớt ra rửa sạch, để ráo nước. Hành lá cắt gốc, rửa sạch, thái nhỏ. Hành tím bóc vỏ, rửa sạch, thái lát mỏng.','','ef56fa38-cc32-478b-b3a4-847391738cfa');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a589dce9-7909-40ee-acef-afcfab3ee669',2,N'Thịt bò chà muối, rửa sạch, thái mỏng bỏ vào tô. Ướp thịt bò với 1 thìa cà phê hành tím, ít tiêu, 1 thìa cà phê hạt nêm, 2 thìa canh nước tương, 1 thìa canh dầu hào. Trộn đều ướp khoảng 10 phút cho thấm gia vị.','','ef56fa38-cc32-478b-b3a4-847391738cfa');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5d9941cc-4452-4bc8-84c7-0a93aace10c6',3,N'Bắc nồi lên bếp cho vào 2 thìa canh dầu ăn phi thơm ít hành tỏi băm. Cho thịt bò vào xào săn trên lửa lớn sau đó đổ hết cà tím vào xào cùng. Nêm nếm 1 thìa canh hạt nêm, 0.5 thìa cà phê muối, 1 thìa cà phê đường.','','ef56fa38-cc32-478b-b3a4-847391738cfa');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7816b763-1a35-44bc-a7c5-396cbcb61fd9',4,N'Xào săn cà rồi đổ 500ml nước vào nấu sôi. Nêm nếm gia vị vừa ăn bỏ hành vào là hoàn thành.','','ef56fa38-cc32-478b-b3a4-847391738cfa');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('98dc16ab-16c6-4c6a-a997-f6d2b1edd1a2',5,N'xong','','ef56fa38-cc32-478b-b3a4-847391738cfa');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('85a7aa46-de83-4e63-b742-4121fb3069eb','ef56fa38-cc32-478b-b3a4-847391738cfa','f9c9fd62-d998-4e02-b025-218aefa09fba',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('74dca185-1ef6-4e5c-863b-1efaaa172287','ef56fa38-cc32-478b-b3a4-847391738cfa','a4546e0c-0056-4e69-8f59-e7fe7f041d42',300.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('95d63737-dc16-4b98-afda-d0df3ab7558f','ef56fa38-cc32-478b-b3a4-847391738cfa','334b9883-f828-4e6e-9f70-6ac77c1a6adf',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('440ac316-ee08-428b-8ea7-9fb0d9f18854','ef56fa38-cc32-478b-b3a4-847391738cfa','16eda913-da50-4711-90c4-7bbbf507e1d1',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3a465c40-38cc-41ac-b398-4f903f4b7547','92df7117-d1fa-420a-9771-6d7f54fe5d33','ef56fa38-cc32-478b-b3a4-847391738cfa',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8bf56a68-facd-448c-a716-b9ac2296c32a','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','ef56fa38-cc32-478b-b3a4-847391738cfa',340.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d4afb123-49e4-4c71-91f0-4353d8b49928','71c34c3c-18da-4745-8b7d-4774800170ec','ef56fa38-cc32-478b-b3a4-847391738cfa',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('adb761f6-2a9c-4644-aa9b-482370349fcc','52c2699b-b628-4499-83d4-d478f7f9c902','ef56fa38-cc32-478b-b3a4-847391738cfa',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9a73f6fa-55af-407f-a255-3d2504b7d163','6631457d-6680-4faa-aa2b-1e7e21d12bd4','ef56fa38-cc32-478b-b3a4-847391738cfa',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('268a7ad1-420c-409f-8a14-7486634e3400','73bba7e2-640f-48da-b681-64d79c2ae9e0','ef56fa38-cc32-478b-b3a4-847391738cfa',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('83157724-7730-4205-9b20-f64d558c8213','998ed6be-f894-4d11-bde8-22e46900a926','ef56fa38-cc32-478b-b3a4-847391738cfa',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fd5c7fa4-f33f-40fc-b6f2-82e27c4de42d','1d67d321-d82e-415e-8297-b24427aa46ae','ef56fa38-cc32-478b-b3a4-847391738cfa',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1d35cce1-d4af-473e-8aa1-fb985e8ef742','8239b53c-b2c4-480d-a8fa-2f4660c678be','ef56fa38-cc32-478b-b3a4-847391738cfa',60.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','ef56fa38-cc32-478b-b3a4-847391738cfa');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','ef56fa38-cc32-478b-b3a4-847391738cfa');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',N'Canh cà tím cà chua',N'Cà chua sẽ giúp phần nước canh cà tím thêm hương vị đậm đà và màu sắc hấp dẫn hơn. Ngoài ra canh cà tím cà chua còn chứa nhiều vitamin, chất xơ và các khoáng chất quan trọng cho cơ thể. Những ngày trời mưa lạnh được húp món canh ngon nóng hổi, béo béo, thơm thơm thì chẳng còn gì bằng.',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208284-ca-tim-bung-ca-chua.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0641f4da-0577-4634-af48-6ddd5274d026',1,N'Cà tím thái thành các khúc vừa ăn ngâm vào nước muối loãng 10 phút. Tiếp theo rửa sạch cà để ráo nước. Hành lá cắt gốc, rửa sạch, thái nhỏ. Hành tím, tỏi bóc vỏ băm nhỏ. Cà chua rửa sạch thái múi cau.','','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3e5fe7b7-44ce-45f3-9769-b33502b85117',2,N'Thịt ba chỉ rửa nước muối loãng, rửa sạch, thái miếng vừa ăn. Đậu hũ rửa sạch, thái miếng vuông chiên vàng giòn các mặt, để ráo dầu.','','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6562d0a7-c559-4116-af75-8af84f55c191',3,N'Bắc nồi lên bếp cho và 2 thìa canh dầu ăn phi thơm hành tím, tỏi băm. Tiếp theo cho cà tím vào xào 2 phút rồi cho 2/3 cà chua vào xào cùng. Nêm nếm 1 thìa cà phê muối, 1 thìa cà phê bột nghệ, 1 thìa cà phê hạt nêm. Tiếp theo bạn cho 2 chén nước lọc vào nồi đun sôi.','','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('73e931c9-8612-4071-aae9-248ca5e303ce',4,N'Nước sôi bạn cho phần thịt heo, đậu hũ vào nấu cùng. Nêm nếm gia vị lại cho vừa miệng nấu đến khi tất cả chín thì cho hành vào rồi tắt bếp.','','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e0956018-1a86-4fad-8eab-ce1dd32f1086',5,N'xong','','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aaae49a6-ff2d-4106-964c-11b5d04c4ad4','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e','f9c9fd62-d998-4e02-b025-218aefa09fba',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('22e35b9d-49a2-4622-b472-3487a585c785','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e','770f3d34-b289-44eb-94fd-7b7bb598181d',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7ca32d5e-1993-4ca1-88d3-75416a52788b','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e','d7bf2767-ba8f-495e-bf45-2481c3831f1f',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fa876d9c-d9d4-4123-8577-168cea234960','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e','ea8e4f8b-a9ee-4617-a102-54f1cfd3fd9c',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c15aee84-1497-406d-aa67-208777428914','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e','16eda913-da50-4711-90c4-7bbbf507e1d1',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b164ddf5-0cfc-4eaa-84f7-9c05f4792d4b','92df7117-d1fa-420a-9771-6d7f54fe5d33','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',310.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c5b38d72-cb42-49a9-a5a5-aa0ca6fc93fa','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cefebca2-bdf4-4965-892c-0b4335726696','71c34c3c-18da-4745-8b7d-4774800170ec','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f01aae78-2e83-4fa2-9e1c-593c89a31705','52c2699b-b628-4499-83d4-d478f7f9c902','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2dff56a9-02d7-4bdd-8eed-d08f283ac041','6631457d-6680-4faa-aa2b-1e7e21d12bd4','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c9127043-cde8-486e-85da-dca05b75851a','73bba7e2-640f-48da-b681-64d79c2ae9e0','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('06dbfb40-3f96-4ceb-8a74-1c518c7474b9','998ed6be-f894-4d11-bde8-22e46900a926','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b76ea53f-b16c-4f5d-b4a2-e0e63a99a87b','1d67d321-d82e-415e-8297-b24427aa46ae','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e33fe43d-b2be-4c84-9e42-80c6aee43b06','8239b53c-b2c4-480d-a8fa-2f4660c678be','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e',62.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','7f17ffe5-727a-4f06-8a3c-866ff0ff0c1e');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('eae9820e-b76d-480c-90dd-6eb8e04075f8',N'Canh cà tím nấu cá',N'Canh cà tím nấu cá sẽ mang đến cho bạn ngày hè mát mẻ, ngon miệng và dễ chịu. Bởi cá và cà tím là sự kết hợp hoàn hảo tạo ra món ăn vừa dinh dưỡng vừa thơm ngon. Để cách nấu canh cá ngon tròn vị bạn nên chọn cá tươi ngon, thịt hồng hào nhé!',25,1,'https://cdn.yeutre.vn/medias/uploads/208/208287-canh-ca-ca-tim-ngon.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('63aaf6f6-14f9-45dc-830e-481a31241a20',1,N'Cà tím thái múi cau ngâm vào nước muối loãng 15 phút rồi vớt ra, rửa sạch, để ráo. Đổ cà vào nồi ướp với 1 thìa canh bột nghệ, 2 thìa cà phê hạt nêm, 1 thìa cà phê muối, 1 thìa cà phê tỏi băm, 2 thìa canh dầu ăn trộn đều. Hành lá, thì là, rau răm nhặt, rửa sạch, thái nhỏ. Mẻ hòa với nước lọc qua rây lấy phần nước sốt mẻ.','','eae9820e-b76d-480c-90dd-6eb8e04075f8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d7281055-c686-45ec-9e29-346c453125bf',2,N'Cá làm sạch, cắt khúc vừa ăn, bóp muối và ít rượu trắng. Sau đó rửa sạch vài lần nước, để ráo. Bắc chảo lên bếp cho vào ít dầu ăn phi thơm hành tím sau đó bỏ cá vào chiên sơ khử mùi tanh.','','eae9820e-b76d-480c-90dd-6eb8e04075f8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b58192e8-f615-447e-b33f-572f20210f9d',3,N'Bắc nồi cà tím lên bếp xào săn lại rồi đổ ngập nước nấu sôi. Nước sôi bạn thả cá vào om khoảng 20 phút. Nêm nếm vào nồi cá nước cốt mẻ, 1 thìa canh đường, 1 thìa canh nước mắm, 1 thìa cà phê muối, 1 thìa cà phê bột ngọt.','','eae9820e-b76d-480c-90dd-6eb8e04075f8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8b6244e0-b4f3-42c2-b72f-cb95e19fe451',4,N'Khi cá chín nêm nếm gia vị lại cho vừa ăn rồi cho hành lá, rau răm, thì là vào rồi tắt bếp.','','eae9820e-b76d-480c-90dd-6eb8e04075f8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4d860803-17f1-4d8f-bd0d-b53d3447e07c',5,N'xong','','eae9820e-b76d-480c-90dd-6eb8e04075f8');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ad7bc452-2391-4de8-bfd6-1799f52432d3','eae9820e-b76d-480c-90dd-6eb8e04075f8','f9c9fd62-d998-4e02-b025-218aefa09fba',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('29908640-c2c0-43d6-93e2-d8c61d60969f','eae9820e-b76d-480c-90dd-6eb8e04075f8','380bb753-d5f6-40c3-8385-78e2bbbb344c',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b72da7a6-442f-4842-9b60-2df1f5cc2b26','eae9820e-b76d-480c-90dd-6eb8e04075f8','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5bfd282f-308d-4c3d-b6b7-cf86ee2c73c7','eae9820e-b76d-480c-90dd-6eb8e04075f8','0b4bcfee-3d15-435a-abe2-8df4f594b11d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('501b0196-06be-48d7-b06a-30f4bb92f4c3','eae9820e-b76d-480c-90dd-6eb8e04075f8','16eda913-da50-4711-90c4-7bbbf507e1d1',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7e113669-5fb4-4779-9542-a271327ae4cc','92df7117-d1fa-420a-9771-6d7f54fe5d33','eae9820e-b76d-480c-90dd-6eb8e04075f8',280.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b11617d0-0daf-4b8f-9529-a1e79ef82b56','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','eae9820e-b76d-480c-90dd-6eb8e04075f8',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('203bb9c9-ce02-4ff1-8806-d03eae03771b','71c34c3c-18da-4745-8b7d-4774800170ec','eae9820e-b76d-480c-90dd-6eb8e04075f8',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('af9178bf-24a3-4dd7-834d-f0f477bc2635','52c2699b-b628-4499-83d4-d478f7f9c902','eae9820e-b76d-480c-90dd-6eb8e04075f8',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('55545b2e-79df-491c-a920-cdb222e01daf','6631457d-6680-4faa-aa2b-1e7e21d12bd4','eae9820e-b76d-480c-90dd-6eb8e04075f8',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5180820c-c120-4c7d-a8af-642fac48df3a','73bba7e2-640f-48da-b681-64d79c2ae9e0','eae9820e-b76d-480c-90dd-6eb8e04075f8',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b656bbf5-a8bd-4d51-8f96-023b1637c4d8','998ed6be-f894-4d11-bde8-22e46900a926','eae9820e-b76d-480c-90dd-6eb8e04075f8',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fb7c5e1b-e9a4-4132-a6a3-86f4b207f351','1d67d321-d82e-415e-8297-b24427aa46ae','eae9820e-b76d-480c-90dd-6eb8e04075f8',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e66549fa-928d-4ad3-939d-e780da4b4e59','8239b53c-b2c4-480d-a8fa-2f4660c678be','eae9820e-b76d-480c-90dd-6eb8e04075f8',30.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','eae9820e-b76d-480c-90dd-6eb8e04075f8');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','eae9820e-b76d-480c-90dd-6eb8e04075f8');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('298a6b0e-8663-4ff6-bb8f-071684397972',N'Canh cá diêu hồng nấu ngót',N'Món canh với vị dai ngọt tự nhiên của thịt cá, thêm chút chua dịu của cà chua và hương thơm từ cần tây, hành lá, tuy mộc mạc nhưng hấp dẫn khiến bạn chỉ muốn thưởng thức ngay. Canh cá điêu hồng còn có công dụng bổ tâm tỳ ích khí, bổ huyết, chữa ăn ngủ kém, tim hay bị hồi hộp.',25,1,'https://cdn.tgdd.vn/2021/05/CookProduct/Cachnaucadieuhongnaungotthanhngotthomngondongiantainha-1200x676.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('253aa9e4-456e-401a-b168-b91ed2e4a0ba',1,N'Cà chua bạn rửa sạch, cắt múi cau. Rau cần và hành lá cắt bỏ rễ, nhặt bỏ lá già úa, rửa sạch rồi cắt khúc.','','298a6b0e-8663-4ff6-bb8f-071684397972');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1191df2e-237d-439e-b342-9ddc0f5e84c5',2,N'Cá diêu hồng bạn làm sạch mang, ruột, cạo vảy rồi rửa qua với nước. Tiếp đến, bạn lấy muối và chanh chà xát khắp mình và trong bụng cá, xả lại dưới vòi nước cho sạch. Cắt cá làm đôi, để ráo.','','298a6b0e-8663-4ff6-bb8f-071684397972');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('97001ac9-2bdc-43bb-b6fa-4d46887a458c',3,N'Đặt nồi lên bếp, bật lửa vừa, cho vào nồi 1 muỗng canh dầu ăn, đun nóng rồi cho hành tím và tỏi băm vào phi thơm, tiếp đến bạn cho cà chua vào xào, đảo để cà chua hơi mềm. Xào cà chua trước sẽ giúp món canh có màu đẹp.','','298a6b0e-8663-4ff6-bb8f-071684397972');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('282c9a3b-822a-4727-8b01-da0578a46912',4,N'Tiếp đến, bạn thêm vào nồi 500ml nước lọc, đun sôi rồi nêm 1.5 muỗng cà phê muối, 2 muỗng cà phê đường, 1 muỗng cà phê nước mắm, khuấy để gia vị tan ra.','','298a6b0e-8663-4ff6-bb8f-071684397972');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4984f1c4-c57a-4c5a-ae10-9c27c89627e9',5,N'Lúc này, bạn cho cá diêu hồng vào, hạ lửa nhỏ nấu sôi khoảng 15 phút để cá chín, lúc này bạn nêm nếm lại gia vị cho vừa ăn, cho vào rau cần, trộn đều rồi đun sôi thêm 3 phút, cuối cùng cho hành lá cắt khúc, khuấy đều, tắt bếp.','','298a6b0e-8663-4ff6-bb8f-071684397972');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8a18545f-feba-4f3f-8089-c2801849a816',6,N'xong','','298a6b0e-8663-4ff6-bb8f-071684397972');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c9d201f5-6e0c-4b55-bb03-9ffded41f19a','298a6b0e-8663-4ff6-bb8f-071684397972','d0ff1762-a4ab-492c-b256-242fa8bf3307',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('471c8182-dc7f-4c19-bbe6-079769d6c1d0','298a6b0e-8663-4ff6-bb8f-071684397972','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('94eef2f1-51a7-436c-bcbd-81aba65f822f','298a6b0e-8663-4ff6-bb8f-071684397972','76a14b4e-ce0e-4ae2-bf67-4fac2d37c846',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e467f2e6-c908-4655-9807-6ad4258a3232','298a6b0e-8663-4ff6-bb8f-071684397972','c881b40b-6ed6-46a9-a1fd-e85dc95099d3',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4edb8bcb-ea12-46b4-898e-f3538c1402c8','298a6b0e-8663-4ff6-bb8f-071684397972','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7dabac05-e3a9-4796-8a9f-25678720f849','298a6b0e-8663-4ff6-bb8f-071684397972','334b9883-f828-4e6e-9f70-6ac77c1a6adf',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7362be63-8c0b-4402-8146-cc4b5e2f78d8','92df7117-d1fa-420a-9771-6d7f54fe5d33','298a6b0e-8663-4ff6-bb8f-071684397972',310.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('82000f24-90e9-4834-8a85-992625690ccd','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','298a6b0e-8663-4ff6-bb8f-071684397972',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2bf070b2-0cdf-48d7-9544-f908072b1879','71c34c3c-18da-4745-8b7d-4774800170ec','298a6b0e-8663-4ff6-bb8f-071684397972',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d7bf72c5-ea90-4b5e-8763-5d4eca27facb','52c2699b-b628-4499-83d4-d478f7f9c902','298a6b0e-8663-4ff6-bb8f-071684397972',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('481c0be0-4165-4e23-88de-108b6c9ef828','6631457d-6680-4faa-aa2b-1e7e21d12bd4','298a6b0e-8663-4ff6-bb8f-071684397972',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('47b93ce9-5672-49a3-ba05-1d58d3497d59','73bba7e2-640f-48da-b681-64d79c2ae9e0','298a6b0e-8663-4ff6-bb8f-071684397972',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b5e0a89e-718a-4cbc-8c5e-6a70091a9df2','998ed6be-f894-4d11-bde8-22e46900a926','298a6b0e-8663-4ff6-bb8f-071684397972',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('17f86438-4f1e-4ea1-bf2d-9f30086853bc','1d67d321-d82e-415e-8297-b24427aa46ae','298a6b0e-8663-4ff6-bb8f-071684397972',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('917cbdc6-0798-489f-b988-7b4469c03520','8239b53c-b2c4-480d-a8fa-2f4660c678be','298a6b0e-8663-4ff6-bb8f-071684397972',32.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','298a6b0e-8663-4ff6-bb8f-071684397972');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('cf5ced1c-fa1e-47e2-bf47-ee651c152ade',N'Canh bí đỏ',N'Món canh với vị dai ngọt tự nhiên của thịt cá, thêm chút chua dịu của cà chua và hương thơm từ cần tây, hành lá, tuy mộc mạc nhưng hấp dẫn khiến bạn chỉ muốn thưởng thức ngay. Canh cá điêu hồng còn có công dụng bổ tâm tỳ ích khí, bổ huyết, chữa ăn ngủ kém, tim hay bị hồi hộp.',20,1,'https://cdn.tgdd.vn/2021/05/CookProduct/1-1200x676-41.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3f261981-5362-4487-acca-85cea1ea1566',1,N'Bí đỏ bạn dùng dao gọt bỏ vỏ và cắt thành các miếng nhỏ vừa ăn. Hành lá, cần tàu bạn bỏ rễ, rửa sạch và cắt nhỏ.','','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bdcddd7f-80b8-4c4c-9b47-349748d904a2',2,N'Bắc nồi lên bếp, bật lửa vừa để làm nóng nồi, cho 1 muỗng canh dầu ăn vào, phi thơm đầu hành đã băm nhuyễn.','','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7a107f3f-1a5c-48ba-9a73-7c7ea4d6a7e8',3,N'Sau đó, cho 200gr thịt băm, 1 muỗng canh đường, 1 muỗng canh hạt nêm, 1 muỗng canh nước mắm và 1 muỗng cà phê tiêu xay vào.','','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8e9d53a8-77a2-4d01-b88c-c9672aba178f',4,N'Đảo đều khoảng 1 phút cho tới khi thịt bằm săn lại, nêm nếm lại gia vị cho vừa ăn rồi xào tiếp cho đến khi thịt vừa chín tới.','','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b94940e8-8830-4c91-8c94-f3f87995edba',5,N'Sau khi thịt được xào vừa chín tới, bạn cho 1 lít nước vào nồi, khuấy đều rồi cho tiếp bí đỏ đã cắt vào, đậy nắp lại, mở lửa to và nấu khoảng 15 phút cho bí chín mềm.','','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('deb3830b-e5af-462d-8b97-91b20aa88801',6,N'Bạn mở nắp ra, nêm thêm 1 muỗng canh hạt nêm cho vừa ăn rồi cho lá hành và cần cắt nhỏ vào khuấy đều rồi tắt bếp.','','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7037074c-8e04-4c13-b6c7-ecb4b79ae7e1',7,N'xong','','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('926fe47f-0900-4437-8f75-3439f42e4335','cf5ced1c-fa1e-47e2-bf47-ee651c152ade','271f4e35-553e-45d0-b3e9-a50b1ce9f910',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cd78f243-db80-4ca4-8b96-c253dbbc1af6','cf5ced1c-fa1e-47e2-bf47-ee651c152ade','47265f9c-9c95-41f7-a759-b0d2ab5ed398',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a034b38e-3544-4eee-8c11-7d29d8a6e571','cf5ced1c-fa1e-47e2-bf47-ee651c152ade','76a14b4e-ce0e-4ae2-bf67-4fac2d37c846',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0d27c591-2360-4cb0-905a-57f1663ab114','cf5ced1c-fa1e-47e2-bf47-ee651c152ade','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ce1d708b-a3d3-4ab0-9b20-d490cb319629','92df7117-d1fa-420a-9771-6d7f54fe5d33','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',350.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2e3f76ec-1289-4dab-a2ba-70621a1de080','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',320.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0f5ff37a-d3d4-4a9c-bfaa-8db4e5f7bf8f','71c34c3c-18da-4745-8b7d-4774800170ec','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3e6a09da-90a5-4dca-af83-cfa94ea138e8','52c2699b-b628-4499-83d4-d478f7f9c902','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('10d8c928-20c7-4d25-84d8-f6a5424b9438','6631457d-6680-4faa-aa2b-1e7e21d12bd4','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8439f3f3-29f9-4f0c-892b-753a5e980046','73bba7e2-640f-48da-b681-64d79c2ae9e0','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0a080230-051f-4ba2-8af4-436c64abe72b','998ed6be-f894-4d11-bde8-22e46900a926','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a43ace99-6eb7-494b-bfa4-f6620705fb74','1d67d321-d82e-415e-8297-b24427aa46ae','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5ee1abfb-91ae-4a72-b74c-4eca567c02cb','8239b53c-b2c4-480d-a8fa-2f4660c678be','cf5ced1c-fa1e-47e2-bf47-ee651c152ade',20.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','cf5ced1c-fa1e-47e2-bf47-ee651c152ade');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('f5f397d4-ee65-4d06-adce-288daf429dcf',N'Canh khoai mỡ',N'Canh khoai mỡ là món ăn dân dã được nhiều người yêu thích. Món canh với vị bùi béo của khoai mỡ thêm vị ngọt từ xương, tôm và hương thơm nồng của tiêu xay, hành lá, ngò gai chắc chắn sẽ để lại ấn tượng sâu sắc cho người thưởng thức.',30,2,'https://www.cet.edu.vn/wp-content/uploads/2018/05/canh-khoai-mo.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('202a79bf-b9eb-44f3-bdf7-ed2146e34bc0',1,N'Xương heo sau khi mua về thì bạn rửa sạch với nước muối rồi rửa lại với nước sạch, để ráo. Cho vào nồi với nước sạch và chút muối, ninh với lửa vừa cho đến khi sôi.','','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5e65c296-40b4-4e0d-a408-00a686108f0a',2,N'Khoai mỡ bạn gọt vỏ, rửa sạch và dùng muỗng nạo nhỏ hoặc bạn có thể cắt thành những miếng nhỏ rồi băm hơi nhuyễn.','','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('26a9e35b-e02c-425a-b6fb-3d970efa5cce',3,N'Tôm sú tươi thì bạn lột vỏ, cắt bỏ chỉ lưng, đầu và đuôi tôm. Bạn có thể để nguyên con hoặc cắt tôm hơi vụn. Bạn có thể ướp tôm với chút hạt nêm và tiêu khoảng 10 – 15 phút cho tôm thấm gia vị.','','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7eb9834f-922a-4529-a609-1e871dc9b058',4,N'Bạn bắc chảo lên và cho chút dầu ăn vào đun, đợi dầu nóng thì cho phần hành tím vào phi cho thơm. Tiếp theo cho tôm vào xào cho tới khi tôm vừa chín tới thì tắt bếp.','','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cea4c749-8fc5-46bd-9459-f75c4a33ffac',5,N'Khi nồi nước dùng của bạn đã sôi thì bạn cho phần tôm đã xào vào nồi nước dùng, để lửa liu riu thêm khoảng 5 phút thì cho phần khoai mỡ vào, quậy đều và nêm nếm lại gia vị cho vừa ăn, tiếp tục để nồi canh hầm cho đến khi nước canh hơi sền sệt lại là được.','','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('88e2fafc-1c23-4ac5-b492-25892c9e5aca',6,N'Trước khi tắt bếp thì bạn cho hành lá, ngò gai và ngò om đã thái nhỏ vào, khuấy nhẹ.','','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('91e5be00-e0a7-471a-a8a9-d4aee5cc76ce',7,N'xong','','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6c1c9daa-06b3-4f92-948b-5484bed25068','f5f397d4-ee65-4d06-adce-288daf429dcf','9215e807-b6cc-44ef-a55b-a2ccbcddafeb',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6ec52dff-68db-45ad-8ee8-271decf743cd','f5f397d4-ee65-4d06-adce-288daf429dcf','469dd1e0-f903-4b82-ad7d-b1c8392f2d5b',250.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1c3c1ade-ba14-424f-b1ca-d4bebfc2f3ee','f5f397d4-ee65-4d06-adce-288daf429dcf','1e26847c-49b3-44fe-8ef0-f844d5f9008e',300.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('534d912e-a062-4048-a2de-e697d49d64c9','f5f397d4-ee65-4d06-adce-288daf429dcf','16eda913-da50-4711-90c4-7bbbf507e1d1',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ebdd687a-d1bb-4cb0-93ff-15d606ddecc0','92df7117-d1fa-420a-9771-6d7f54fe5d33','f5f397d4-ee65-4d06-adce-288daf429dcf',420.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ff5bdb86-cb76-4e21-a350-59f9f958c704','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','f5f397d4-ee65-4d06-adce-288daf429dcf',390.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a32980fb-5956-437c-98c0-c5f977e99665','71c34c3c-18da-4745-8b7d-4774800170ec','f5f397d4-ee65-4d06-adce-288daf429dcf',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2320c02d-cfaf-4505-8e64-23bebff86ab6','52c2699b-b628-4499-83d4-d478f7f9c902','f5f397d4-ee65-4d06-adce-288daf429dcf',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e26fa584-0bc8-4282-baaa-2f42e1e2b790','6631457d-6680-4faa-aa2b-1e7e21d12bd4','f5f397d4-ee65-4d06-adce-288daf429dcf',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a26b51fc-9c99-4dfb-9202-f39a43fe80b2','73bba7e2-640f-48da-b681-64d79c2ae9e0','f5f397d4-ee65-4d06-adce-288daf429dcf',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('31c84dcc-cd48-42ac-abea-acd727069d09','998ed6be-f894-4d11-bde8-22e46900a926','f5f397d4-ee65-4d06-adce-288daf429dcf',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cc46137d-67dc-4435-b03b-383710395a5e','1d67d321-d82e-415e-8297-b24427aa46ae','f5f397d4-ee65-4d06-adce-288daf429dcf',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e4dff35b-c1df-4149-b83a-8c1cb74b276a','8239b53c-b2c4-480d-a8fa-2f4660c678be','f5f397d4-ee65-4d06-adce-288daf429dcf',35.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','f5f397d4-ee65-4d06-adce-288daf429dcf');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('480650d7-dec3-435a-962b-031b4b083a51',N'Canh chay rau củ thập cẩm',N'Món canh chay rau củ thập cẩm được thực hiện từ sự kết hợp của rất nhiều nguyên liệu từ rau củ như: bắp, khoai tây, cà rốt, su su, nấm, …. Thành phần trong rau củ có giá trị dinh dưỡng cao: chứa nhiều vitamin và các loại khoáng chất cần thiết cho cơ thể giúp tăng cường sức đề kháng và hệ miễn dịch, chống lại bệnh tật.',25,1,'https://afamilycdn.com/150157425591193600/2021/7/8/recipe48084-cook-step4-636961270321128150-16257337239781562318519.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bba8073d-dd30-4de7-b5f6-826a22becdf5',1,N'Su su, cà rốt, khoai tây gọt vỏ rửa sạch, cắt khúc. Nấm rơm rửa sạch cắt bỏ phần chân nấm, chẻ làm đôi hoặc làm ba. Bắp mỹ cắt khúc vừa ăn. Hành boa rô cắt gốc rửa sạch cắt khúc khoảng 2 cm.','','480650d7-dec3-435a-962b-031b4b083a51');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6bf449ff-94b2-4efe-8b38-9a57072f0c7e',2,N'Đặt nồi lên bếp cho khoảng 1,5 lít nước vào nồi và đun sôi. Tiếp theo bạn cho bắp vào nồi nước và nấu khoảng 10 phút.','','480650d7-dec3-435a-962b-031b4b083a51');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3b027ace-0181-4d38-b7c4-799ad4d0c2eb',3,N'Cho nấm rơm, cà rốt, su su, khoai tây đã cắt khúc vào nồi nấu trong vòng 15 – 20 phút cho đến khi các nguyên liệu chín đều. Tiếp đến cho hành boa rô vào sau cùng.','','480650d7-dec3-435a-962b-031b4b083a51');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bccf0a20-f442-4a0e-842a-19ecd45ea428',4,N'Cuối cùng bạn nêm nếm gia vị cho phù hợp với khẩu vị của gia đình.','','480650d7-dec3-435a-962b-031b4b083a51');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('51e3acf8-8e07-4c46-81ab-775ec60dfa96',5,N'xong','','480650d7-dec3-435a-962b-031b4b083a51');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('450dd670-a1c4-4bf4-9795-3bfdfcd13368','480650d7-dec3-435a-962b-031b4b083a51','2c681d45-deab-4a68-a9ca-5d739b133721',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5fd8cf64-dcce-41f4-b57b-32c43885aa67','480650d7-dec3-435a-962b-031b4b083a51','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b68f67f4-80ce-41eb-9c15-cf68aebf0721','480650d7-dec3-435a-962b-031b4b083a51','de475e50-f4d0-4284-ab1f-ebef03839000',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('477cde8e-daf3-48ff-91a0-82a68ec03b52','480650d7-dec3-435a-962b-031b4b083a51','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1ad2dc53-2a98-46b3-a60b-55c36040daea','480650d7-dec3-435a-962b-031b4b083a51','86b26f0d-415a-4767-bfad-6a7237a20012',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2e34d0b1-f2a7-47c1-9d7b-056b003fa5a3','480650d7-dec3-435a-962b-031b4b083a51','fd839269-45f6-4773-b08e-f85c105fa5ee',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cee5f397-ea96-4747-8650-234a619854a7','92df7117-d1fa-420a-9771-6d7f54fe5d33','480650d7-dec3-435a-962b-031b4b083a51',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f5206fe5-a6d3-40d4-ab13-54b6ee9433a7','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','480650d7-dec3-435a-962b-031b4b083a51',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e10f2541-add1-48eb-a38d-065d3f5dd825','71c34c3c-18da-4745-8b7d-4774800170ec','480650d7-dec3-435a-962b-031b4b083a51',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('35d7e5c4-09dc-4c7a-9321-c752ed8f2f82','52c2699b-b628-4499-83d4-d478f7f9c902','480650d7-dec3-435a-962b-031b4b083a51',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2ba37555-ee00-4a1e-8ec2-8ea2c5c3a3be','6631457d-6680-4faa-aa2b-1e7e21d12bd4','480650d7-dec3-435a-962b-031b4b083a51',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9afaa225-921d-4a1b-9da5-d8adfb85d850','73bba7e2-640f-48da-b681-64d79c2ae9e0','480650d7-dec3-435a-962b-031b4b083a51',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('693f8d12-c84c-4f5d-87e0-a1f4eef59858','998ed6be-f894-4d11-bde8-22e46900a926','480650d7-dec3-435a-962b-031b4b083a51',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('47365c27-5599-4e94-91ae-98355b5b2a6f','1d67d321-d82e-415e-8297-b24427aa46ae','480650d7-dec3-435a-962b-031b4b083a51',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f1589354-1aca-41fb-92a3-ed795221a3ea','8239b53c-b2c4-480d-a8fa-2f4660c678be','480650d7-dec3-435a-962b-031b4b083a51',20.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('c7557e8c-3575-4ec6-9851-47966f2ab424','480650d7-dec3-435a-962b-031b4b083a51');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','480650d7-dec3-435a-962b-031b4b083a51');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('6580e18b-9802-450b-a955-3339418a5c98',N'Canh atiso chay',N'Món canh hoa atiso là món ăn rất bổ dưỡng. Hoa atiso có tác dụng kích thích tiêu hóa, lợi gan mật, trợ tim, lợi tiểu và thường được dùng nấu canh, hấp, làm salad,… Đặc biệt, các món canh làm từ hoa atiso không những dễ thực hiện mà còn rất thơm ngon, bổ dưỡng.',30,1,'https://congthucmonngon.com/wp-content/uploads/2021/09/3-mon-canh-atiso-don-gian-bo-duong.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d40fb0a4-d489-43cb-a4c8-0dc8b6b20417',1,N'Hành lá, ngò gai cắt bỏ phần gốc, rửa sạch từng nhánh để ráo cắt từng khúc khoảng 2cm. Hành khô lột vỏ rửa sạch, băm nhỏ.','','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aaa50e88-c623-415f-8d1e-97d7f5e7db82',2,N'Bông atiso được cắt dọc thành miếng vừa ăn, tách bỏ phần lông tơ ở giữa nhụy, rửa sạch và để ráo.','','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d6aede5a-51da-4464-b7d9-32e34ed40bcb',3,N'Bắt nồi lên bếp cho dầu ăn vào nồi và chờ đến khi dầu sôi lăn tăn bạn phi thơm hành, tiếp đến bạn cho khoảng 1,5 lít nước vào nồi và đun sôi.','','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9e91ba1d-a574-49c4-8651-0f890b047c62',4,N'Bạn cho hoa atiso vào nồi nước đang sôi và nấu khoảng 15 phút.','','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('421a2e90-8fce-46e9-95e2-2e2253485a36',5,N'Bạn nêm nếm gia vị cho phù hợp với khẩu vị của gia đình và rắc hành lá, ngò gai lên trên cùng để món ăn được thơm ngon hơn.','','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7f8ee7b2-8199-463c-b0e2-4d82377e37cf',6,N'xong','','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('92199051-2e69-4fe6-ab5c-541f8802b6b2','6580e18b-9802-450b-a955-3339418a5c98','ac439f9d-aa39-4357-a541-132cba3f6736',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1d3c5201-02e4-48f3-805a-bc1d1ffd0697','6580e18b-9802-450b-a955-3339418a5c98','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('664233a0-b062-47cb-bad3-f17155d054d9','92df7117-d1fa-420a-9771-6d7f54fe5d33','6580e18b-9802-450b-a955-3339418a5c98',220.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('11e6b620-085b-45cb-9b9d-97513d7ddf41','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','6580e18b-9802-450b-a955-3339418a5c98',200.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e7949dd2-0fff-441b-a954-6414ecb95f79','71c34c3c-18da-4745-8b7d-4774800170ec','6580e18b-9802-450b-a955-3339418a5c98',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2e1c4ae7-6714-496c-a866-8f9ea244f119','52c2699b-b628-4499-83d4-d478f7f9c902','6580e18b-9802-450b-a955-3339418a5c98',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bd61d5b9-4729-4d04-95c2-fefa78ec9437','6631457d-6680-4faa-aa2b-1e7e21d12bd4','6580e18b-9802-450b-a955-3339418a5c98',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('36b86961-9abb-4b95-958f-137591999844','73bba7e2-640f-48da-b681-64d79c2ae9e0','6580e18b-9802-450b-a955-3339418a5c98',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8d25aa41-db94-407d-9c65-d23dec06de14','998ed6be-f894-4d11-bde8-22e46900a926','6580e18b-9802-450b-a955-3339418a5c98',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d77fcc36-34cc-4bfd-afb1-4daa811eb971','1d67d321-d82e-415e-8297-b24427aa46ae','6580e18b-9802-450b-a955-3339418a5c98',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7e55ee0c-f588-4607-bdf4-775554d0d500','8239b53c-b2c4-480d-a8fa-2f4660c678be','6580e18b-9802-450b-a955-3339418a5c98',20.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('c7557e8c-3575-4ec6-9851-47966f2ab424','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','6580e18b-9802-450b-a955-3339418a5c98');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('853b1838-828d-4494-9607-1bf5e474fac3',N'Canh nấm chay thập cẩm',N'Món canh nấm thập cẩm chay là một trong số những món canh chay được khá nhiều người yêu thích.Với công thức chế biến đơn giản món canh nấm thập cẩm chay vô cùng bổ dưỡng lại có hương vị thơm ngọt tự nhiên từ nấm và các loại củ quả.',25,1,'https://cdn.tgdd.vn/Files/2020/06/27/1266043/doi-gio-voi-mon-canh-nam-chay-ngon-ngot-bo-duong-202006272242559000.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0193a43a-441d-4e1e-ad20-c0232cb1891c',1,N'Hành lá cắt bỏ phần gốc, rửa sạch từng nhánh để ráo cắt từng phần khoảng 2cm. Nấm các loại cắt bỏ phần chân nấm rửa sạch cắt thành miếng vừa ăn. Cà rốt gọt vỏ rửa sạch, tỉa bông hoa thái lát mỏng khoảng 2cm. Bí đỏ gọt vỏ, rửa sạch cắt khúc. Súp lơ xanh rửa sạch cắt miếng. Hạt sen tách bỏ phần tâm sen để khi ăn không bị đắng, sau đó rửa sơ qua để ráo nước. Hành boa rô cắt gốc rửa sạch cắt khúc khoảng 1 cm.','','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('57d0ab53-8ba6-4569-b8fe-c3c3ce14f1b0',2,N'Bắt nồi lên bếp cho dầu ăn vào nồi và chờ đến khi dầu sôi lăn tăn bạn phi thơm hành boa rô, tiếp đến bạn cho cà rốt, bí đỏ hạt sen, nấm súp lơ xanh vào nồi và cho ít hạt nêm đảo đều tay.','','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('da2539c4-ccfe-4e22-9277-01133340d33d',3,N'Bạn cho khoảng 1,5 lít nước vào nồi và đun sôi cho đến khi nguyên liệu chín mềm.','','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e4b0daab-6b9b-44cf-922d-d57f62f0948a',4,N'Bạn nêm nếm gia vị cho phù hợp với khẩu vị của gia đình','','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bc8af7af-dd86-4907-b3c5-60f4d25ce9bd',5,N'xong','','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('69731eba-c7d1-4cea-a2eb-5a1b5ff39651','853b1838-828d-4494-9607-1bf5e474fac3','de475e50-f4d0-4284-ab1f-ebef03839000',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b8232c2c-2ce5-4baf-ad84-fd8a6f816e3f','853b1838-828d-4494-9607-1bf5e474fac3','658e2b15-5958-4b7f-9840-3ac70c421730',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('48d602cc-1497-420d-88ce-e76784e5669e','853b1838-828d-4494-9607-1bf5e474fac3','e3485a95-d5ed-4951-9aaa-dcbdd45092ac',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e6ad9cfa-3c60-47ef-9a26-d9409192786a','853b1838-828d-4494-9607-1bf5e474fac3','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f88135e5-9158-4478-be13-8eb2d1325008','853b1838-828d-4494-9607-1bf5e474fac3','14094c14-951b-4d84-9d23-d9c81db2a9eb',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('55fe3c3f-a4a8-4609-a3d7-af485a2a9126','853b1838-828d-4494-9607-1bf5e474fac3','271f4e35-553e-45d0-b3e9-a50b1ce9f910',50.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7cac83de-8d4d-4754-b80a-90cbbea610e8','853b1838-828d-4494-9607-1bf5e474fac3','40586e8a-d14b-4c1d-bfab-6ae17a95ed69',100.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ebdb63ca-9ee2-4585-bec4-781e160465b9','853b1838-828d-4494-9607-1bf5e474fac3','fd839269-45f6-4773-b08e-f85c105fa5ee',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('749e61b6-7e00-4d58-9eea-c960d0dca2d1','853b1838-828d-4494-9607-1bf5e474fac3','16eda913-da50-4711-90c4-7bbbf507e1d1',3.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0dace28c-428c-455f-8eb4-59ea4842cb70','92df7117-d1fa-420a-9771-6d7f54fe5d33','853b1838-828d-4494-9607-1bf5e474fac3',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4efdf28a-b657-498c-b6f2-d52de2e8a76c','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','853b1838-828d-4494-9607-1bf5e474fac3',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8eed39c3-26ba-4b15-b234-0ca0e3b7860d','71c34c3c-18da-4745-8b7d-4774800170ec','853b1838-828d-4494-9607-1bf5e474fac3',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('35dfeee6-fc70-4056-a64f-118159fd0fc8','52c2699b-b628-4499-83d4-d478f7f9c902','853b1838-828d-4494-9607-1bf5e474fac3',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6d18f015-b3ff-44a0-9bc5-fdcd4aa6d619','6631457d-6680-4faa-aa2b-1e7e21d12bd4','853b1838-828d-4494-9607-1bf5e474fac3',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a111afb8-26e5-42e8-853f-faca3f4d2526','73bba7e2-640f-48da-b681-64d79c2ae9e0','853b1838-828d-4494-9607-1bf5e474fac3',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7348adbb-3451-4e6b-b38b-2c23a3b982fe','998ed6be-f894-4d11-bde8-22e46900a926','853b1838-828d-4494-9607-1bf5e474fac3',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2878c822-322c-40e0-a23a-10b1f1b99c5c','1d67d321-d82e-415e-8297-b24427aa46ae','853b1838-828d-4494-9607-1bf5e474fac3',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('55b07151-9e2e-4617-b172-7ed092b60979','8239b53c-b2c4-480d-a8fa-2f4660c678be','853b1838-828d-4494-9607-1bf5e474fac3',25.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('c7557e8c-3575-4ec6-9851-47966f2ab424','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('cd98f280-6dbf-4d35-94b1-6ebbcc06e651','853b1838-828d-4494-9607-1bf5e474fac3');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('8ed27531-a708-4ac9-8860-ba20c89bda50',N'Bánh cá hồi (Salmon Cake) - phục vụ cho 4 người ăn',N'Những chiếc bánh cá hồi tốt cho sức khỏe này là một cách ngon miệng để tăng lượng omega-3 cho bạn.',45,2,'https://www.eatingwell.com/thmb/LLMtDybA1Ows3j4caUf1Lp5Suuk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/64227841-47a0471010024608874124edcf4e6f47.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f865a752-3b3e-48ea-8e22-2e4726faf42b',1,N'Làm nóng lò nướng ở nhiệt độ 225 độ C. Phết dầu ăn lên bề mặt tấm nướng','','8ed27531-a708-4ac9-8860-ba20c89bda50');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('88633d88-1832-470f-9c4f-14a8000fa1c0',2,N'Đun nóng 0.5 muỗng cà phê dầu trong chảo trên lửa vừa. Thêm hành tây và cần tây; nấu, khuấy, cho đến khi mềm, khoảng 3 phút.','','8ed27531-a708-4ac9-8860-ba20c89bda50');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3aa181e4-75fc-4341-8304-e99ed9508d37',3,N'Đặt cá hồi vào một bát vừa. Tách ra bằng một cái nĩa; loại bỏ xương và da. Thêm trứng; trộn đều. Thêm hỗn hợp hành tây, vụn bánh mì và hạt tiêu; trộn đều. Tạo hỗn hợp thành 8 miếng.','','8ed27531-a708-4ac9-8860-ba20c89bda50');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('798dd6f3-98b5-4f9e-8fc8-e86923747052',4,N'Đun nóng 0.5 muỗng cà phê dầu còn lại trong chảo trên lửa vừa. Thêm 4 miếng chả và chiên cho đến khi mặt dưới vàng, từ 2 đến 3 phút. Rồi lật chúng lên khay nướng đã chuẩn bị. Lặp lại với các miếng chả còn lại.','','8ed27531-a708-4ac9-8860-ba20c89bda50');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c03debce-baed-4014-afdf-bb0b172de5a8',5,N'Nướng bánh cá hồi cho đến khi vàng trên mặt và làm nóng qua, 15 đến 20 phút. Bánh cá hồi ăn kèm với nước sốt và chanh.','','8ed27531-a708-4ac9-8860-ba20c89bda50');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('30de7378-f46d-4ba0-ad8f-3c289bbbfcba','8ed27531-a708-4ac9-8860-ba20c89bda50','33502109-1cbc-4238-a6e7-2a647a5e4640',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7b54e3e2-45ad-4a6d-b18b-2ed2c065d291','8ed27531-a708-4ac9-8860-ba20c89bda50','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4cc9155b-24e8-4620-9b66-4943ea0171c2','8ed27531-a708-4ac9-8860-ba20c89bda50','d4e39161-0266-4245-a9fd-0771ec1d9870',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ae0b2238-0f83-49d7-bd35-3bbe4d26a2a4','8ed27531-a708-4ac9-8860-ba20c89bda50','ee8e4240-af95-4310-be13-f5daf58691f9',425.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('70f1c28a-3baf-40a6-9f18-54367ce2f0ca','8ed27531-a708-4ac9-8860-ba20c89bda50','d2985015-ad21-4c3a-8f22-608be39f47c0',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0ab65dd1-0538-452e-96f2-b558e34e3864','8ed27531-a708-4ac9-8860-ba20c89bda50','a34c0eec-5b1f-41fd-93d1-ed10ad524a30',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e02b83cf-dd0a-4249-8156-91e13db11aa8','8ed27531-a708-4ac9-8860-ba20c89bda50','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('273e831d-0804-46b5-9dcc-5d787d90c0c4','8ed27531-a708-4ac9-8860-ba20c89bda50','c881b40b-6ed6-46a9-a1fd-e85dc95099d3',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('07b1adc5-0b35-4a71-be1f-c7cb0af85c24','92df7117-d1fa-420a-9771-6d7f54fe5d33','8ed27531-a708-4ac9-8860-ba20c89bda50',250.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0ad5567a-4e79-4289-aea7-0aeb9741f5a4','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','8ed27531-a708-4ac9-8860-ba20c89bda50',350.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('29e2a0f1-afc8-4e8e-a0cc-e77cb607e13f','71c34c3c-18da-4745-8b7d-4774800170ec','8ed27531-a708-4ac9-8860-ba20c89bda50',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fbc6f95c-0f22-410c-98d9-b5400996f25c','52c2699b-b628-4499-83d4-d478f7f9c902','8ed27531-a708-4ac9-8860-ba20c89bda50',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c2c9bb63-a879-4685-b423-3ef274a8c7a7','6631457d-6680-4faa-aa2b-1e7e21d12bd4','8ed27531-a708-4ac9-8860-ba20c89bda50',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6ba41bee-3c54-497e-8ab2-3fdfdcabf79f','73bba7e2-640f-48da-b681-64d79c2ae9e0','8ed27531-a708-4ac9-8860-ba20c89bda50',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('274c9fea-a7a6-49e9-889d-d4a0773b3cd7','998ed6be-f894-4d11-bde8-22e46900a926','8ed27531-a708-4ac9-8860-ba20c89bda50',34.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f0ba5987-0681-4ace-96a9-e9bc2c33f987','1d67d321-d82e-415e-8297-b24427aa46ae','8ed27531-a708-4ac9-8860-ba20c89bda50',126.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('be7d05f9-9557-4e59-843e-3aa389a93d30','8239b53c-b2c4-480d-a8fa-2f4660c678be','8ed27531-a708-4ac9-8860-ba20c89bda50',761.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('af7a30d7-5f3f-4eaa-9528-800e898d26e9','8ed27531-a708-4ac9-8860-ba20c89bda50');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('08064cd7-4912-44e9-9a2d-250df291fff9',N'Bò xào đậu que (Stir-fried beef with green beans) - phục vụ cho 4 người ăn',N'Món xào đậu que và thịt bò này được nấu với tiêu trắng thơm, dầu mè, gừng và tỏi. Phục vụ với cơm trắng.',25,1,'https://www.eatingwell.com/thmb/XO4JJ26Z5XQ1eLuquUjtgUi_9oY=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/garlic-green-beans-with-crispy-ground-beef-73dcafebc4f8450e9a6dcb60e8d323ec.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9938a973-3229-4675-a5ab-d6a69dfba820',1,N'Đun nóng 1 muỗng canh dầu thực vật trong chảo vừa.','','08064cd7-4912-44e9-9a2d-250df291fff9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ea0e7998-a7e9-47c4-896f-7ac490bfdd92',2,N'Thêm thịt bò và nấu, chia thành từng miếng lớn, cho đến khi chín vàng và giòn, từ 4 đến 6 phút. Rắc 0.25 muỗng cà phê muối, sau đó chuyển sang một cái bát nhỏ.','','08064cd7-4912-44e9-9a2d-250df291fff9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0c8dbd32-aaa1-4bfd-b36f-ca15b5c7ec37',3,N'Trong khi đó, đánh giấm, dầu mè, nước mắm, đường và tiêu trắng trong một bát nhỏ.','','08064cd7-4912-44e9-9a2d-250df291fff9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('01117e90-b063-439a-acc8-54f5150be4a7',4,N'Đun nóng 2 muỗng canh dầu thực vật còn lại trong chảo. Thêm đậu quê và nấu, cho đến khi hơi cháy và mềm, từ 4 đến 6 phút.','','08064cd7-4912-44e9-9a2d-250df291fff9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('30697261-75cf-4149-b11b-1612e6f59db0',5,N'Thêm hành trắng, tỏi và gừng; nấu, khuấy, cho đến khi có mùi thơm, khoảng 1 phút.','','08064cd7-4912-44e9-9a2d-250df291fff9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('39beabdc-7a47-4e53-8856-40e6ff6b8642',6,N'Thêm hỗn hợp giấm, thịt bò để riêng và 0.25 muỗng cà phê muối còn lại; nấu, khuấy, cho đến khi tráng đều, khoảng 1 phút. Cuối cùng rắc hành lá, nếu muốn.','','08064cd7-4912-44e9-9a2d-250df291fff9');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1cd0562c-98e4-4122-a481-c65a439fe9ac','08064cd7-4912-44e9-9a2d-250df291fff9','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6c74c783-0c5a-4487-81ff-e92a3873647f','08064cd7-4912-44e9-9a2d-250df291fff9','a4546e0c-0056-4e69-8f59-e7fe7f041d42',230.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a47c3c9c-03a6-43f2-9e6a-f173b2e3f754','08064cd7-4912-44e9-9a2d-250df291fff9','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d8ec2dcc-e536-4dc1-a93a-e03256e14a37','08064cd7-4912-44e9-9a2d-250df291fff9','728aa51b-5fb9-43e9-9b9a-2208fdc3f979',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('620ec69e-d6a3-4274-9bfb-beb75d3b5ef6','08064cd7-4912-44e9-9a2d-250df291fff9','8ed8864e-1f5f-4593-ac9f-170cdde3477b',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3b919b39-613f-42e4-a2f8-8155225c422a','08064cd7-4912-44e9-9a2d-250df291fff9','3371e1dc-901d-492f-be54-2c475e3b899a',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7357ee5d-c25b-4944-b139-4d2b8d1e827e','08064cd7-4912-44e9-9a2d-250df291fff9','bc4f0475-7cb3-4764-86ed-d1b0c2430810',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bf7566a8-bd0b-4493-8e4f-321a7643e1af','08064cd7-4912-44e9-9a2d-250df291fff9','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('50ff8d9f-2c8c-463a-82d8-2d6a581938d7','08064cd7-4912-44e9-9a2d-250df291fff9','ec926ca8-4df0-46d1-b150-a542f16c161f',680.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5619abae-b75e-49a5-b370-231f31086484','08064cd7-4912-44e9-9a2d-250df291fff9','d938f228-5967-4e19-b432-34cf16837fb4',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cc408ac2-d2d0-41b8-bda6-cff75e5d32fe','08064cd7-4912-44e9-9a2d-250df291fff9','a6d4322e-e06a-4edb-ac87-91a4eebac40b',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('06a8decc-4e4b-4e68-b216-fc8594fbac7c','92df7117-d1fa-420a-9771-6d7f54fe5d33','08064cd7-4912-44e9-9a2d-250df291fff9',220.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6cb83077-ba60-4066-a229-bc1c3958f1bb','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','08064cd7-4912-44e9-9a2d-250df291fff9',294.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e73e811c-48a6-481d-a1bb-8e7831b6e141','71c34c3c-18da-4745-8b7d-4774800170ec','08064cd7-4912-44e9-9a2d-250df291fff9',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3f6957d7-c472-4662-945a-097b9c89c455','52c2699b-b628-4499-83d4-d478f7f9c902','08064cd7-4912-44e9-9a2d-250df291fff9',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('08766e71-fb6f-4310-8dad-96c53b2c9b97','6631457d-6680-4faa-aa2b-1e7e21d12bd4','08064cd7-4912-44e9-9a2d-250df291fff9',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e00e6984-96eb-41de-a824-e489fba04e71','73bba7e2-640f-48da-b681-64d79c2ae9e0','08064cd7-4912-44e9-9a2d-250df291fff9',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4ea55bc2-ef31-4def-b622-912dc47557f4','998ed6be-f894-4d11-bde8-22e46900a926','08064cd7-4912-44e9-9a2d-250df291fff9',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c89d016c-28ab-4aa7-b9b0-558f0b8f4b8b','1d67d321-d82e-415e-8297-b24427aa46ae','08064cd7-4912-44e9-9a2d-250df291fff9',37.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ad53e69b-837e-42a7-bc84-cb4366d07092','8239b53c-b2c4-480d-a8fa-2f4660c678be','08064cd7-4912-44e9-9a2d-250df291fff9',526.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('18ce6030-7cf5-48cb-b6d2-ffe822666225','08064cd7-4912-44e9-9a2d-250df291fff9');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('a579b7c3-10fd-4439-9f40-639274127243',N'Bò hầm sốt đậu (Southern Beefy Skillet) - phục vụ cho 4 người ăn',N'Làm toàn bộ bữa ăn này trong một cái chảo! Thịt bò ngấm hương vị từ các loại rau và thảo mộc, giúp thịt bò ngon ngọt và đầy hương vị.',40,2,'https://www.eatingwell.com/thmb/apBAGm7jtTzRMGZQ-pIhz22aGQQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5450486-e6f866e62ea44642896591591a624600.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('795e7c84-8c68-4387-8569-0ece52b598da',1,N'Nấu thịt bò trong một cái chảo lớn cùng với cần tây, hành tây và tỏi trên lửa vừa cho đến khi thịt có màu nâu, khuấy đều để thịt vỡ ra khi nấu.','','a579b7c3-10fd-4439-9f40-639274127243');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3d34d5fe-21a3-44c6-8ecf-bda03de4fed3',2,N'Thêm đậu , cà chua, sốt cà chua, ớt ngọt, húng quế, sốt ớt cay và tiêu đen.','','a579b7c3-10fd-4439-9f40-639274127243');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cfc13662-3e7b-4a29-9d17-95928dbc8fc3',3,N'Đun sôi; giảm nhiệt. Đun nhỏ lửa, không đậy nắp, trong 10 đến 15 phút hoặc cho đến khi có độ đặc mong muốn.','','a579b7c3-10fd-4439-9f40-639274127243');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bd0f8e96-6879-48fb-8cc8-8fa96e60482d','a579b7c3-10fd-4439-9f40-639274127243','a4546e0c-0056-4e69-8f59-e7fe7f041d42',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('30262bb7-98a6-4524-b037-d2a6b0c9551f','a579b7c3-10fd-4439-9f40-639274127243','d4e39161-0266-4245-a9fd-0771ec1d9870',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('73879c49-7b61-4440-b93f-c3dee291e6e1','a579b7c3-10fd-4439-9f40-639274127243','d938f228-5967-4e19-b432-34cf16837fb4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('84f365d4-b880-4d98-832a-776c12a4ff23','a579b7c3-10fd-4439-9f40-639274127243','aca4cefb-f0a7-4d5e-86f2-890b15af7fda',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('77b78e20-8bfd-492a-88e4-94a08115002d','a579b7c3-10fd-4439-9f40-639274127243','770f3d34-b289-44eb-94fd-7b7bb598181d',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('368736fa-28a2-4747-b9fd-cd0d7d2cd68d','a579b7c3-10fd-4439-9f40-639274127243','3f2bdf45-02f5-456d-a5b0-d7792645b980',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('41efda01-c62a-428c-94cf-be30eb35300d','a579b7c3-10fd-4439-9f40-639274127243','33502109-1cbc-4238-a6e7-2a647a5e4640',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1598831d-5b66-4506-b391-5a2f0a83c0bb','a579b7c3-10fd-4439-9f40-639274127243','9c1e6bb4-a1b4-4638-8ec4-f4ef9dc779e4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e55b234f-c737-4648-b609-7058960b8873','a579b7c3-10fd-4439-9f40-639274127243','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('10401f90-07f2-4a0e-a361-c341810e3f5c','92df7117-d1fa-420a-9771-6d7f54fe5d33','a579b7c3-10fd-4439-9f40-639274127243',260.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ae8a0197-68a1-4d60-a4bf-1c551a9d83d0','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','a579b7c3-10fd-4439-9f40-639274127243',342.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4aaee333-8ee2-4dad-bbf4-221b898064e6','71c34c3c-18da-4745-8b7d-4774800170ec','a579b7c3-10fd-4439-9f40-639274127243',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f1af7c93-e7e1-40eb-b018-1da75c3d1d54','52c2699b-b628-4499-83d4-d478f7f9c902','a579b7c3-10fd-4439-9f40-639274127243',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f59b2cfa-1469-4245-bf08-38ed83f5f548','6631457d-6680-4faa-aa2b-1e7e21d12bd4','a579b7c3-10fd-4439-9f40-639274127243',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7111d2a3-38c5-4d5f-bd95-8f87e98964d2','73bba7e2-640f-48da-b681-64d79c2ae9e0','a579b7c3-10fd-4439-9f40-639274127243',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cbfa4fe8-79f7-46bc-ac6c-f590e339bd4d','998ed6be-f894-4d11-bde8-22e46900a926','a579b7c3-10fd-4439-9f40-639274127243',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('97b6a6c6-a4d2-4e72-8257-67ef0539e17e','1d67d321-d82e-415e-8297-b24427aa46ae','a579b7c3-10fd-4439-9f40-639274127243',74.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5c435e78-174b-4340-8769-c1768e972aa3','8239b53c-b2c4-480d-a8fa-2f4660c678be','a579b7c3-10fd-4439-9f40-639274127243',499.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','a579b7c3-10fd-4439-9f40-639274127243');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','a579b7c3-10fd-4439-9f40-639274127243');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('0c0d202a-a777-46eb-9c5a-daf5dd42c497',N'Thịt bò hình viên hầm sốt bơ - phục vụ cho 4 người ăn',N'Thịt bò cùng với nước sốt bơ hòa quyện tạo nên hương vị tuyệt vời, đồng thời bổ sung các chất dinh dưỡng cần thiết cho người ăn!',45,3,'https://www.eatingwell.com/thmb/tsNRXF9eJzeZRuQaCFr0tXE_OUo=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7676936-c82dfa9e22204a389da471954f2234a0.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('33579968-25fe-4999-a815-398455bf22a4',1,N'Làm nóng lò ở 200 độ C.','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('023d9400-2b13-4db5-b675-d2dd0a4f5e1f',2,N'Đun nóng dầu trong chảo chịu nhiệt lớn trên lửa vừa','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b2044e66-b08f-4abe-8546-1c01d5e04921',3,N'Thêm thịt bò và nấu, dùng thìa gỗ nghiền nhỏ thịt bò cho đến khi có màu nâu và chín trong 4 đến 7 phút.','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4fafd012-3e9d-438b-86de-60f9d14ba92d',4,N'Thêm tỏi, 0.75 muỗng cà phê muối; nấu, khuấy, trong 1 phút.','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d5905834-6db2-4deb-af76-5f10d1a109c6',5,N'Cho hành tây, đậu Hà Lan và cà rốt vào xào; nấu, khuấy thường xuyên, cho đến khi rau nóng, khoảng 4 phút. Rắc hỗn hợp với 3 muỗng canh bột mì; nấu, khuấy, trong 1 phút.','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5d894fc9-2463-42e3-a08d-62f3a96d283b',6,N'Thêm nước dùng và nấu, thỉnh thoảng khuấy, cho đến khi hỗn hợp hơi đặc lại, khoảng 10 phút nữa.','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3a4452e9-bff3-45f7-a3d0-b63ff5493b0f',7,N'rong khi đó, kết hợp 1 chén bột còn lại, bột nở và 0.25 muỗng cà phê muối còn lại trong một bát vừa. Chà bơ vào bột để tạo ra một hỗn hợp thô.','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('025e922f-9922-4af1-b1c4-5d894a2b50b9',8,N'Khuấy bơ sữa và trộn cho đến khi vừa kết hợp. Đặt từng muỗng canh bột lên trên hỗn hợp thịt bò','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bddc1887-a17d-4630-99f6-c998a5a03d79',9,N'Chuyển chảo vào lò nướng. Nướng cho đến có màu nâu vàng và chín trong 15 đến 18 phút. Trang trí thêm mùi tây nếu muốn.','','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9346cbb0-afd8-4ba3-a4ab-4985adbb6841','0c0d202a-a777-46eb-9c5a-daf5dd42c497','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a29c290e-f59c-46ce-b104-b470ebc988fe','0c0d202a-a777-46eb-9c5a-daf5dd42c497','a4546e0c-0056-4e69-8f59-e7fe7f041d42',455.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b154321d-dfd7-4e59-beb6-9c8056a91647','0c0d202a-a777-46eb-9c5a-daf5dd42c497','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('35d7fc39-65b4-48a9-b29f-8ec31ba11a49','0c0d202a-a777-46eb-9c5a-daf5dd42c497','e41475bc-ef90-4ac7-95d0-017c9da58216',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cb268421-8d79-491d-9941-9870d240fa05','0c0d202a-a777-46eb-9c5a-daf5dd42c497','ef091dc1-3b6a-4a52-b93b-3a05bf37c241',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3d821eba-9efb-441b-a531-51811dfe1ab2','0c0d202a-a777-46eb-9c5a-daf5dd42c497','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e58f248f-f8a3-4eb8-b533-0ed39a6ed2f3','0c0d202a-a777-46eb-9c5a-daf5dd42c497','7d3a888d-541d-4569-9816-dea520471bf4',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('466c30fa-a2ea-42e9-b134-c6656742d08d','0c0d202a-a777-46eb-9c5a-daf5dd42c497','89d83686-a86e-45d6-b83d-5ddd1c4fcb1e',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a85f03d2-cef2-466a-b39a-b512002f034b','0c0d202a-a777-46eb-9c5a-daf5dd42c497','75796448-6575-442b-aa95-00b060ce70db',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bd5b3739-0ecb-4708-b7e5-e0e87f38b489','0c0d202a-a777-46eb-9c5a-daf5dd42c497','d9fcb4d0-f792-40e8-9b98-61defa4f876b',500.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('72e1183b-270c-4a7d-bb86-4f341829b8a3','0c0d202a-a777-46eb-9c5a-daf5dd42c497','5e5a7922-33dd-41ba-8887-ed05f71ece4b',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b5c8ef0a-5f04-46f0-a165-e2fcbca3e89f','92df7117-d1fa-420a-9771-6d7f54fe5d33','0c0d202a-a777-46eb-9c5a-daf5dd42c497',300.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c7ba7989-2672-444d-9fdb-8dcff7e67341','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','0c0d202a-a777-46eb-9c5a-daf5dd42c497',420.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ff77a6f0-d170-484b-85e3-0a5076254711','71c34c3c-18da-4745-8b7d-4774800170ec','0c0d202a-a777-46eb-9c5a-daf5dd42c497',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8bcaa255-85c1-412b-a44e-1ad356be6d6f','52c2699b-b628-4499-83d4-d478f7f9c902','0c0d202a-a777-46eb-9c5a-daf5dd42c497',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ef3ccfc3-c5ad-41ac-8191-4fc689e83376','6631457d-6680-4faa-aa2b-1e7e21d12bd4','0c0d202a-a777-46eb-9c5a-daf5dd42c497',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5546f522-c3a9-4f61-beeb-ce8d00a5c5ec','73bba7e2-640f-48da-b681-64d79c2ae9e0','0c0d202a-a777-46eb-9c5a-daf5dd42c497',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e341d271-1c98-4486-b094-7b016d97ec87','998ed6be-f894-4d11-bde8-22e46900a926','0c0d202a-a777-46eb-9c5a-daf5dd42c497',25.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bffd4d44-46ab-4d25-9d5e-aa5c2e657aa4','1d67d321-d82e-415e-8297-b24427aa46ae','0c0d202a-a777-46eb-9c5a-daf5dd42c497',72.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4e3679ba-7f88-4e73-88b9-6a6ad7c2d094','8239b53c-b2c4-480d-a8fa-2f4660c678be','0c0d202a-a777-46eb-9c5a-daf5dd42c497',688.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','0c0d202a-a777-46eb-9c5a-daf5dd42c497');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('f5dc56e8-c58c-45f6-8dc0-249763f37e13',N'Thịt bò xay xào khoai tây - phục vụ 4 người ăn',N'Trong công thức khoai tây và thịt bò xay tốt cho sức khỏe này, thịt bò xay và khoai tây được kết hợp với các loại rau nhiều màu sắc, bao gồm cải xoăn, cà chua và ớt.',40,2,'https://www.eatingwell.com/thmb/w7x2o4lZZ0tZNW8RRwXfK-Tc-fU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/ground-beef-and-potato-skillet-b42511c359784b499fd6cfb7852c33ed.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6a8cf25d-9895-4dd9-98a0-dc1b4fe6025a',1,N'Đun nóng 1 muỗng canh dầu olive trong chảo gang lớn trên lửa vừa','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cdb22a3e-da1c-44a5-8685-29dde428846a',2,N'Thêm thịt bò, thì là, muối và hạt tiêu; nấu, khuấy thường xuyên, cho đến khi vàng đều, khoảng 6 phút.','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('026c22ff-37d2-4343-9b25-e9dee4c7d564',3,N'Dùng thìa có rãnh, chuyển thịt bò sang đĩa có lót khăn giấy; không lau sạch chảo. Thêm 1 muỗng canh dầu vào các giọt trong chảo.','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f34f45d7-506e-4390-9d24-63d5346996c0',4,N'Thêm khoai tây; nấu, thỉnh thoảng khuấy, cho đến khi khoai tây bắt đầu caramen và mềm, khoảng 20 phút. Chuyển khoai tây vào đĩa với thịt bò.','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('79e04db7-b1c7-4456-8d69-6f30434d43e5',5,N'Đun nóng 1 muỗng canh dầu còn lại trong chảo trên lửa vừa. Thêm hành tây, ớt chuông; nấu, thỉnh thoảng khuấy, cho đến khi mềm, khoảng 6 phút.','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('259fa55b-8b9d-4603-b2e3-688fd738b999',6,N'Thêm tỏi; nấu, khuấy thường xuyên, cho đến khi có mùi thơm, khoảng 1 phút.','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('201588a9-6d18-4c61-ae4b-f9e52d38c7e1',7,N'Thêm cải xoăn và cà chua; nấu, khuấy thường xuyên, cho đến khi cải xoăn héo và cà chua chín trong khoảng 3 phút.','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('419c9bfa-7e95-49f7-8507-541e60880907',8,N'Cho thịt bò và khoai tây vào xào cùng. Rắc hành lá, nếu muốn.','','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7c7ddaa6-1960-4fbe-98ba-c0e43ea40b32','f5dc56e8-c58c-45f6-8dc0-249763f37e13','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5003eac4-2113-45c4-8e18-c03933278f38','f5dc56e8-c58c-45f6-8dc0-249763f37e13','a4546e0c-0056-4e69-8f59-e7fe7f041d42',455.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3d2bfab2-bc76-44f2-a8cb-7c28c7712c82','f5dc56e8-c58c-45f6-8dc0-249763f37e13','fce4620d-51e3-4cd6-8143-a1386bd71848',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1c162035-c2c7-4450-a1a9-25e400338bac','f5dc56e8-c58c-45f6-8dc0-249763f37e13','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aaeccf0e-e601-4268-b973-e19194ff0908','f5dc56e8-c58c-45f6-8dc0-249763f37e13','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1e8ae516-144f-4f51-9d9c-72d0d68af37f','f5dc56e8-c58c-45f6-8dc0-249763f37e13','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0ac9a974-b640-44b6-9aed-e0dd56adf32f','f5dc56e8-c58c-45f6-8dc0-249763f37e13','d938f228-5967-4e19-b432-34cf16837fb4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('80abb5e7-d8f1-4b75-a093-e72ed4b21dc8','f5dc56e8-c58c-45f6-8dc0-249763f37e13','efceb02c-d52e-4821-bca2-337770ec853f',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f604b7a0-0c4e-4c97-a2c9-fa261fbd8173','f5dc56e8-c58c-45f6-8dc0-249763f37e13','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1c27555c-29cc-4cba-bb71-2824cf811884','92df7117-d1fa-420a-9771-6d7f54fe5d33','f5dc56e8-c58c-45f6-8dc0-249763f37e13',230.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fb8e4510-cbd7-4e03-a633-3e69ceb71e71','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','f5dc56e8-c58c-45f6-8dc0-249763f37e13',322.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bfb65afe-405c-4702-ba39-051d2c99610e','71c34c3c-18da-4745-8b7d-4774800170ec','f5dc56e8-c58c-45f6-8dc0-249763f37e13',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('085cd36f-fe39-4fd4-aec2-cca7aae3cfe1','52c2699b-b628-4499-83d4-d478f7f9c902','f5dc56e8-c58c-45f6-8dc0-249763f37e13',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('43a78d43-9a04-45d5-9cb5-2a7979c16ff6','6631457d-6680-4faa-aa2b-1e7e21d12bd4','f5dc56e8-c58c-45f6-8dc0-249763f37e13',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b0c0421b-6b39-434a-9e25-d084f07d66c8','73bba7e2-640f-48da-b681-64d79c2ae9e0','f5dc56e8-c58c-45f6-8dc0-249763f37e13',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f0bb4a1e-3781-46f4-813c-70f96e7ae971','998ed6be-f894-4d11-bde8-22e46900a926','f5dc56e8-c58c-45f6-8dc0-249763f37e13',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('eeb22a5e-7929-40a6-9db4-258b1e5ebc19','1d67d321-d82e-415e-8297-b24427aa46ae','f5dc56e8-c58c-45f6-8dc0-249763f37e13',49.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d7642d2d-d479-45ba-8a27-6288f6c13390','8239b53c-b2c4-480d-a8fa-2f4660c678be','f5dc56e8-c58c-45f6-8dc0-249763f37e13',400.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('18ce6030-7cf5-48cb-b6d2-ffe822666225','f5dc56e8-c58c-45f6-8dc0-249763f37e13');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('75be4f06-d897-44a2-9696-2f022cadfbc5',N'Bánh cá hồi với salad dưa leo - phục vụ cho 4 người',N'Trong công thức bữa tối dễ dàng này, cá hồi đóng hộp tiện lợi được biến thành những miếng chả cá hồi áp chảo thơm ngon được phục vụ cùng với salad dưa leo',30,2,'https://www.eatingwell.com/thmb/DD-g6HNVVkqT1Nyhmn-i7D3GLe0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/crispy-salmon-cakes-with-creamy-cucumber-salad-5cf0e619612242289cddcb27431ad5eb.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9ef3fc68-752f-429c-aa27-05583f58d32e',1,N'Khuấy trứng, vụn bánh mì, sốt mayonnaise, và hạt tiêu trong một bát lớn. Nhẹ nhàng trộn trong cá hồi. Định hình thành miếng dày','','75be4f06-d897-44a2-9696-2f022cadfbc5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a9aa6040-a5b7-4ff1-8185-3d99a05f34ca',2,N'Đun nóng dầu trong chảo không dính lớn trên lửa vừa. Thêm chả và nấu cho đến khi có màu nâu ở đáy, khoảng 6 phút.','','75be4f06-d897-44a2-9696-2f022cadfbc5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('204325cd-c976-436a-a952-443b626ea3fa',3,N'Lật miếng chả và nấu cho đến khi chín vàng và nóng đều, khoảng 6 phút nữa.','','75be4f06-d897-44a2-9696-2f022cadfbc5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('efcd8dad-3167-4dc8-a125-6ce21fdc79bc',4,N'Trong khi đó, đánh sữa chua, nước cốt chanh, thì là và muối trong một bát vừa. Thêm dưa chuột và hành tây để kết hợp.','','75be4f06-d897-44a2-9696-2f022cadfbc5');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dc42a146-13ab-4ec5-a88e-606fb7f1a289',5,N'Chia bánh cá hồi và salad dưa leo ra 4 đĩa.','','75be4f06-d897-44a2-9696-2f022cadfbc5');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0bd100e7-60a6-4dd2-a2bb-c2eb55a3958c','75be4f06-d897-44a2-9696-2f022cadfbc5','d2985015-ad21-4c3a-8f22-608be39f47c0',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a69c811a-9ce1-4e81-8d3b-55f4fe217867','75be4f06-d897-44a2-9696-2f022cadfbc5','a34c0eec-5b1f-41fd-93d1-ed10ad524a30',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4b1ba7d8-9d1a-4afa-b3b0-33ea3e6c709d','75be4f06-d897-44a2-9696-2f022cadfbc5','692938d0-e603-4d02-b905-21b2a85d2ff5',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('49f7d60f-324b-4f79-a27c-ce4aaed15034','75be4f06-d897-44a2-9696-2f022cadfbc5','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('89116a10-8991-40a9-8ac6-158c09add0dc','75be4f06-d897-44a2-9696-2f022cadfbc5','ee8e4240-af95-4310-be13-f5daf58691f9',140.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4977f5f2-d6c0-4cb1-b294-3fc7a8622ad0','75be4f06-d897-44a2-9696-2f022cadfbc5','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2fc4ed0a-8498-4b62-81e2-53d4ed2294cf','75be4f06-d897-44a2-9696-2f022cadfbc5','54e75d05-b6c3-49c4-a8a2-41a8e62f6ac2',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c07f1eed-ab0a-42f8-bcd2-bac23357a83b','75be4f06-d897-44a2-9696-2f022cadfbc5','03e26134-35df-4228-8b56-6d403a163af1',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2e8faa7d-a82d-4a40-aaba-9f4c45e7aaa8','75be4f06-d897-44a2-9696-2f022cadfbc5','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('56c3800a-a498-4c25-bbb0-c089d502287a','75be4f06-d897-44a2-9696-2f022cadfbc5','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dfafb2fb-93e8-43ac-82e8-23814efbacc6','75be4f06-d897-44a2-9696-2f022cadfbc5','334b9883-f828-4e6e-9f70-6ac77c1a6adf',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e1847fba-b113-4bfe-b7a6-44eddff6ed94','92df7117-d1fa-420a-9771-6d7f54fe5d33','75be4f06-d897-44a2-9696-2f022cadfbc5',170.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('093f75b9-d147-4975-a2d5-a2ec9ea606d2','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','75be4f06-d897-44a2-9696-2f022cadfbc5',255.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('05f1c6a9-15fc-4147-b18a-353727cfeeef','71c34c3c-18da-4745-8b7d-4774800170ec','75be4f06-d897-44a2-9696-2f022cadfbc5',12.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fdb17a1e-f3f6-4441-8a08-613e1693036c','52c2699b-b628-4499-83d4-d478f7f9c902','75be4f06-d897-44a2-9696-2f022cadfbc5',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6829c96a-2078-4d60-a83d-6a5c02aee85b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','75be4f06-d897-44a2-9696-2f022cadfbc5',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bbd277eb-f40d-4c71-a561-fced94edbd79','73bba7e2-640f-48da-b681-64d79c2ae9e0','75be4f06-d897-44a2-9696-2f022cadfbc5',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cf83a76a-f25e-4dbc-82b3-b0982390b121','998ed6be-f894-4d11-bde8-22e46900a926','75be4f06-d897-44a2-9696-2f022cadfbc5',22.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f7bebbab-eaf4-4312-b5af-d82fc77a408d','1d67d321-d82e-415e-8297-b24427aa46ae','75be4f06-d897-44a2-9696-2f022cadfbc5',110.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9e84a827-ddd1-436f-95d5-232774ea7f9d','8239b53c-b2c4-480d-a8fa-2f4660c678be','75be4f06-d897-44a2-9696-2f022cadfbc5',598.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('52dc3264-05ec-4080-921e-a19c48b178fe','75be4f06-d897-44a2-9696-2f022cadfbc5');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('8e8fdd8c-1631-4106-a0be-a23e9f52bd54',N'Cá hồi với đậu Hà Lan nghiền - phuc vụ cho 4 người',N'Nấu bơ cho đến khi nó có màu nâu sẽ tạo thêm hương vị hấp dẫn, hấp dẫn cho công thức cá hồi áp chảo dễ dàng này.',20,1,'https://www.eatingwell.com/thmb/kPz985Q0wl0xurFAhhd-GtPXC2c=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7678349-63f023bfe7774297ad3fb89269223fb2.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1063568c-dadd-4803-9074-ba6c23060e41',1,N'Đun sôi một nồi nước vừa ở nhiệt độ cao. Thêm đậu Hà Lan và nấu cho đến khi mềm, khoảng 5 phút.','','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('06f868ae-f81a-4b44-877a-a13acbf82e2a',2,N'Kết hợp đậu Hà Lan, nước dành riêng,kem nguyên chất, vỏ chanh, nước cốt chanh, muối và hạt tiêu','','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('430b72fe-b2bb-4064-b0f7-4ab67f7d6b8c',3,N'Trải ra đĩa phục vụ','','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e90b41e2-93c6-4097-bcba-26a5e77cf54c',4,N'Đun nóng dầu trong chảo gang lớn hoặc chảo không dính trên lửa vừa','','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('079fe495-c28e-40b3-bbb3-b4816803b69f',5,N'Rắc cá hồi và thêm vào chảo, mặt da hướng lên trên. Nấu, lật một lần, cho đến khi nó có màu nâu và bong ra bằng nĩa, tổng thời gian từ 6 đến 7 phút.','','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('36ad7b55-b93b-47f9-9455-9c5046f8f7a4',6,N'Xếp cá hồi lên trên đậu Hà Lan. Thêm bơ và cỏ xạ hương vào chảo. Nấu, khuấy, cho đến khi bơ có màu nâu và thơm, khoảng 30 giây. Ăn kèm với chanh, nếu muốn.','','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4ad33ee6-4b86-4b7a-bd4e-4d43095e8e7e','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','ef091dc1-3b6a-4a52-b93b-3a05bf37c241',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9719fb0e-8163-4774-b177-69ac395102db','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','0a621540-e3c5-4f04-b6af-cf0276eb16e8',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ca2ecd4c-b4d4-4187-b3ac-13fbdf75fb5c','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','03e26134-35df-4228-8b56-6d403a163af1',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('004e9870-c05f-453e-aad3-612090c4b7a5','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c58643ca-0904-4a96-9ecb-add5da56758b','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e51669a1-db5d-4e31-959b-dfd7cda05599','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('570a53ec-596e-4cd9-975d-b0cc4db50335','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','ee8e4240-af95-4310-be13-f5daf58691f9',560.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2a2a4f31-541a-4c13-839b-c9eca15a3c36','8e8fdd8c-1631-4106-a0be-a23e9f52bd54','aca4cefb-f0a7-4d5e-86f2-890b15af7fda',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('15c38135-4fec-4435-947d-d3ec6627d397','92df7117-d1fa-420a-9771-6d7f54fe5d33','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',280.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bc5e35ef-1d15-4aa4-88e2-64286c927c02','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',370.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3ab8fa31-6cb0-4fe7-874e-b70c87465e12','71c34c3c-18da-4745-8b7d-4774800170ec','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',18.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('01d81e79-e2ea-4149-89d2-0707e8081c9b','52c2699b-b628-4499-83d4-d478f7f9c902','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('15ecf55a-c752-44be-9089-b37b61245e67','6631457d-6680-4faa-aa2b-1e7e21d12bd4','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7a95e229-e7c1-4eb3-a2b0-7433f6be98b6','73bba7e2-640f-48da-b681-64d79c2ae9e0','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5f9946bb-b5b8-46ac-8545-3a973e7341ed','998ed6be-f894-4d11-bde8-22e46900a926','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e1b5489f-cca7-4053-a625-d30a781546ca','1d67d321-d82e-415e-8297-b24427aa46ae','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',86.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dbde54dd-b237-4a4a-beac-ff60e127d2b2','8239b53c-b2c4-480d-a8fa-2f4660c678be','8e8fdd8c-1631-4106-a0be-a23e9f52bd54',669.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('18ce6030-7cf5-48cb-b6d2-ffe822666225','8e8fdd8c-1631-4106-a0be-a23e9f52bd54');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('83d1ef35-fdc7-4edf-abb2-4118f37edc09',N'Salad gà kiểu Hy Lạp - phục vụ cho 4 người',N'Biến thịt gà còn sót lại thành món salad tươi kiểu Địa Trung Hải với dầu dấm đóng chai, nhiều rau, feta và ô liu',20,1,'https://www.eatingwell.com/thmb/YfhKYpP3g2s_6EJ4KplDOqEi08Q=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8377217-94b3017777434cde9ae59a46042a4419.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('71e1aa0f-cde8-4224-9cd3-c379b0fe0372',1,N'Trộn cá hồi, sốt mayonnaise, và giấm trong một bát nhỏ.','','83d1ef35-fdc7-4edf-abb2-4118f37edc09');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('38245552-3b3a-4be4-95f8-49b1867baef0',2,N'Đổ đầy nước vào một cái bát nhỏ. Đặt 1 tấm rong biển lên thảm cuốn sushi hoặc miếng màng bọc thực phẩm, với một đầu dài hướng về phía bạn.','','83d1ef35-fdc7-4edf-abb2-4118f37edc09');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('736c7b8b-1b5a-4941-9834-ca668b359354',3,N'ùng đầu ngón tay ướt phủ 0.33 chén cơm lên nửa dưới của tấm cuộn sushi, sau đó rắc 0.5 thìa cà phê vừng.','','83d1ef35-fdc7-4edf-abb2-4118f37edc09');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('67c1fc9e-4671-4ecd-8b74-85a1508302b6',4,N'trên cùng với 1/6 hỗn hợp cá hồi, dưa chuột, cà rốt, hành lá, ngò và bơ.','','83d1ef35-fdc7-4edf-abb2-4118f37edc09');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5b4c6b98-717d-48e4-9bd9-d009ac6f1be4',5,N'Sử dụng chiếu để giúp bạn, cuộn tấm cuộn sushi lại, nhét chặt các nguyên liệu khi bạn làm việc. Lặp lại với các thành phần còn lại.','','83d1ef35-fdc7-4edf-abb2-4118f37edc09');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4c1be344-5ee5-4052-857a-69396e9bce53','83d1ef35-fdc7-4edf-abb2-4118f37edc09','393cc049-7315-4ce5-bf4a-0102eedf381d',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fee92dfb-16a1-47f8-90da-00c51d973129','83d1ef35-fdc7-4edf-abb2-4118f37edc09','692938d0-e603-4d02-b905-21b2a85d2ff5',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('66cef3ad-7c86-4e31-817d-138ce29dff05','83d1ef35-fdc7-4edf-abb2-4118f37edc09','bc3a9e74-2be5-4fac-b064-990ca8f7b80f',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9cd80373-a444-413a-ac1f-0fc47de2ee4f','83d1ef35-fdc7-4edf-abb2-4118f37edc09','60b85c2f-4c45-4179-b320-37aa0cd9039e',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('ec1a795e-6a43-487d-a4ec-7f2c4b4b9aae','83d1ef35-fdc7-4edf-abb2-4118f37edc09','7d9d5f2c-f851-4229-b93d-dabca5416ce4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('10efd81b-5bac-45cd-bd7b-22c2a83ec22b','83d1ef35-fdc7-4edf-abb2-4118f37edc09','8cd6f2b6-93eb-43f4-86d5-9127f2082eb7',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dbf8c5cf-ef5d-4ef7-be54-1d00fea36477','83d1ef35-fdc7-4edf-abb2-4118f37edc09','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3d3c9f86-997e-49ce-a382-bc7ff91aa32f','83d1ef35-fdc7-4edf-abb2-4118f37edc09','aca4cefb-f0a7-4d5e-86f2-890b15af7fda',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('857da92a-6cbc-4875-99fc-1f596dd4bf2c','92df7117-d1fa-420a-9771-6d7f54fe5d33','83d1ef35-fdc7-4edf-abb2-4118f37edc09',280.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4a66171f-02c3-4a7f-b678-da101a46fc52','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','83d1ef35-fdc7-4edf-abb2-4118f37edc09',363.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5a28d1cf-e641-4dda-b20f-e3fd3d152e92','71c34c3c-18da-4745-8b7d-4774800170ec','83d1ef35-fdc7-4edf-abb2-4118f37edc09',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1aedb966-8494-407f-b985-7a459a6a9c4a','52c2699b-b628-4499-83d4-d478f7f9c902','83d1ef35-fdc7-4edf-abb2-4118f37edc09',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5adfe9db-b582-4db0-8ae1-c0e2214bc69b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','83d1ef35-fdc7-4edf-abb2-4118f37edc09',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d9d9a01a-0209-4d01-8cad-2499cbbbab50','73bba7e2-640f-48da-b681-64d79c2ae9e0','83d1ef35-fdc7-4edf-abb2-4118f37edc09',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ad0528ae-0345-4e13-8a9a-aac5f43e2feb','998ed6be-f894-4d11-bde8-22e46900a926','83d1ef35-fdc7-4edf-abb2-4118f37edc09',16.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ffe9d74d-4f7a-4c21-9f7e-90e508cfb2bc','1d67d321-d82e-415e-8297-b24427aa46ae','83d1ef35-fdc7-4edf-abb2-4118f37edc09',40.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a6cabb76-db47-482b-b709-126d1e3097bc','8239b53c-b2c4-480d-a8fa-2f4660c678be','83d1ef35-fdc7-4edf-abb2-4118f37edc09',342.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','83d1ef35-fdc7-4edf-abb2-4118f37edc09');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('aeb04159-6c92-40fb-8d18-c8777d7b2e5a','83d1ef35-fdc7-4edf-abb2-4118f37edc09');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('cec59aff-17ef-4ef1-8037-5387a4825914',N'Sandwich cá hồi - phục vụ cho 4 người',N'o',25,1,'https://www.eatingwell.com/thmb/oTqevxtyKK0y4dtV4kNUcJOniWM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3756653-51d1eb6473d6414ba05b7816c1c31918.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('26a65eb2-d4dd-4d48-9965-a33e9c092e8a',1,N'Xát gia vị lên cả hai mặt cá hồi. Nướng cho đến khi chín, 3 đến 4 phút mỗi bên.','','cec59aff-17ef-4ef1-8037-5387a4825914');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('31ae2420-1c38-4a93-b6f4-b258e5901a8a',2,N'Nghiền bơ và sốt mayonnaise trong một bát nhỏ','','cec59aff-17ef-4ef1-8037-5387a4825914');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('972f0fb6-ff17-4c37-b412-6c3775e0c61f',3,N'Để làm bánh mì sandwich, phết một ít hỗn hợp bơ lên mỗi cuộn và cho cá hồi, cà chua và hành tây lên trên.','','cec59aff-17ef-4ef1-8037-5387a4825914');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('85d7b77a-6502-45dd-b6a3-ee1029a54875','cec59aff-17ef-4ef1-8037-5387a4825914','ee8e4240-af95-4310-be13-f5daf58691f9',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2568d700-2495-4133-b1a4-563792e984ce','cec59aff-17ef-4ef1-8037-5387a4825914','aca4cefb-f0a7-4d5e-86f2-890b15af7fda',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4c4b36b0-fc8d-4b48-9100-8c290a8868c2','cec59aff-17ef-4ef1-8037-5387a4825914','692938d0-e603-4d02-b905-21b2a85d2ff5',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0b3336fd-d598-486f-a8b9-3469950ea301','cec59aff-17ef-4ef1-8037-5387a4825914','6bc051e7-1b8c-4cc0-90a4-2db023a84dd3',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2e36f39a-331f-4b5b-b72f-8905f5bbd303','cec59aff-17ef-4ef1-8037-5387a4825914','393cc049-7315-4ce5-bf4a-0102eedf381d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b08c204a-e5fb-449d-9b3c-1c177ac9c23b','cec59aff-17ef-4ef1-8037-5387a4825914','770f3d34-b289-44eb-94fd-7b7bb598181d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f53c169f-7339-4cea-b8b9-20361a30ae01','cec59aff-17ef-4ef1-8037-5387a4825914','334b9883-f828-4e6e-9f70-6ac77c1a6adf',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f20937f1-8068-45de-aaa2-c194942497be','92df7117-d1fa-420a-9771-6d7f54fe5d33','cec59aff-17ef-4ef1-8037-5387a4825914',340.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('44bd6890-e4dd-4a93-9697-e63606a4abe2','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','cec59aff-17ef-4ef1-8037-5387a4825914',416.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9376012c-5146-45f1-b9e4-6744831007fe','71c34c3c-18da-4745-8b7d-4774800170ec','cec59aff-17ef-4ef1-8037-5387a4825914',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d81e3d9e-24f6-4c4e-b096-19d094e45f4c','52c2699b-b628-4499-83d4-d478f7f9c902','cec59aff-17ef-4ef1-8037-5387a4825914',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('290fa3cd-5302-4990-a843-7cab019725a7','6631457d-6680-4faa-aa2b-1e7e21d12bd4','cec59aff-17ef-4ef1-8037-5387a4825914',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6e13cdac-52a2-4195-afd2-56db494da504','73bba7e2-640f-48da-b681-64d79c2ae9e0','cec59aff-17ef-4ef1-8037-5387a4825914',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('52e3b615-c9d8-4577-9375-f93631c8ec92','998ed6be-f894-4d11-bde8-22e46900a926','cec59aff-17ef-4ef1-8037-5387a4825914',31.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3ac00c0f-fec6-4966-8dd9-59ed47db7025','1d67d321-d82e-415e-8297-b24427aa46ae','cec59aff-17ef-4ef1-8037-5387a4825914',55.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3c2f70b5-727d-4dd1-9b5d-e5e600e52cfe','8239b53c-b2c4-480d-a8fa-2f4660c678be','cec59aff-17ef-4ef1-8037-5387a4825914',744.0);
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('1f1b74ce-eb77-4ded-ad62-392bc1d366db',N'Cá hồi áp chảo tiêu chanh - phục vụ cho 4 người',N'Những nguyên liệu đơn giản như chanh, hạt tiêu đen đập dập và ớt bột đã đánh thức hoàn toàn món cá hồi mềm tan với lớp vỏ ngoài giòn rụm này.',15,1,'https://www.eatingwell.com/thmb/mIg5otsCRPAzYdoQsQfJruC3NBs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Skillet-Lemon-Pepper-Salmon-1x1-1-a3409d3d738f4db59672bf55e3de68bc.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('36f24282-39bf-4ef7-8ffe-05c3903c9cb4',1,N'Thấm khô cá hồi và đặt mặt da úp xuống trong một chiếc bát vừa.','','1f1b74ce-eb77-4ded-ad62-392bc1d366db');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a9dd4a8d-1e6c-470f-95f8-6b6493760fd1',2,N'Rắc tiêu, ớt bột, bột tỏi, 0.5 thìa muối và 1 thìa nước cốt chanh.','','1f1b74ce-eb77-4ded-ad62-392bc1d366db');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1fcc6b0d-fd01-40c0-b0d6-74dcb3848a21',3,N'Đun nóng dầu trong chảo chống dính lớn trên lửa vừa','','1f1b74ce-eb77-4ded-ad62-392bc1d366db');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bf531db0-7f92-4616-b8ac-96d4baf8a5b2',4,N'Thêm cá hồi, mặt da úp xuống; nấu cho đến khi da bong ra khỏi chảo dễ dàng và các cạnh mờ đục, khoảng 4 phút.','','1f1b74ce-eb77-4ded-ad62-392bc1d366db');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b37f0893-d2d1-4101-b068-1182e0c9c457',5,N'Giảm nhiệt xuống thấp và lật cá hồi.','','1f1b74ce-eb77-4ded-ad62-392bc1d366db');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6643c42d-e02f-4ef6-bd91-9da236baadfa',6,N'Rắc cá hồi với 1 muỗng canh nước cốt chanh còn lại, vỏ chanh, rau mùi tây và muối mịn.','','1f1b74ce-eb77-4ded-ad62-392bc1d366db');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b73370c0-3b8a-4435-9626-a620bc66a85a','1f1b74ce-eb77-4ded-ad62-392bc1d366db','ee8e4240-af95-4310-be13-f5daf58691f9',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c45c05ac-3c20-4ca7-876d-0122b0ea1d83','1f1b74ce-eb77-4ded-ad62-392bc1d366db','2d679e49-a61a-4801-b500-2d438b441231',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('732199c6-6b86-4ce5-bd4d-ab659c9b87ae','1f1b74ce-eb77-4ded-ad62-392bc1d366db','d938f228-5967-4e19-b432-34cf16837fb4',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('aa565b2b-659f-4433-9569-1dcb887f625f','1f1b74ce-eb77-4ded-ad62-392bc1d366db','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('030da32c-a4c8-4d29-80a5-75eae8dd7034','1f1b74ce-eb77-4ded-ad62-392bc1d366db','03e26134-35df-4228-8b56-6d403a163af1',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d9bb5a19-0dd7-45f4-991f-1a545505ffc0','1f1b74ce-eb77-4ded-ad62-392bc1d366db','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fd4a4761-065b-4daa-98b1-4c78e691a4b6','92df7117-d1fa-420a-9771-6d7f54fe5d33','1f1b74ce-eb77-4ded-ad62-392bc1d366db',170.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7b6fd045-b713-4c37-b1ad-40264a3d3798','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','1f1b74ce-eb77-4ded-ad62-392bc1d366db',239.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('eb061fe5-e5d2-4a50-a9ec-f8440a92a92f','71c34c3c-18da-4745-8b7d-4774800170ec','1f1b74ce-eb77-4ded-ad62-392bc1d366db',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('81a07ca9-a6d4-4d29-81ad-5bf02127d91b','52c2699b-b628-4499-83d4-d478f7f9c902','1f1b74ce-eb77-4ded-ad62-392bc1d366db',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1cebf611-0d5f-4426-8872-dfd643b0298a','6631457d-6680-4faa-aa2b-1e7e21d12bd4','1f1b74ce-eb77-4ded-ad62-392bc1d366db',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('69702a8d-12b3-4d8b-96d7-4129de0d23d6','73bba7e2-640f-48da-b681-64d79c2ae9e0','1f1b74ce-eb77-4ded-ad62-392bc1d366db',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('799764dd-b82b-4316-b5e1-317703703e98','998ed6be-f894-4d11-bde8-22e46900a926','1f1b74ce-eb77-4ded-ad62-392bc1d366db',28.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('886ffe82-4ef8-4ca7-8a6e-935f4be6b982','1d67d321-d82e-415e-8297-b24427aa46ae','1f1b74ce-eb77-4ded-ad62-392bc1d366db',78.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d770462b-decc-4d4c-85c5-b2b46ab86dd8','8239b53c-b2c4-480d-a8fa-2f4660c678be','1f1b74ce-eb77-4ded-ad62-392bc1d366db',427.0);
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',N'Trứng hấp lòng đào ăn kèm với bánh mì - phục vụ cho 4 người',N'Ăn những quả trứng này một mình cho bữa sáng hoặc bữa ăn nhẹ no, hoặc phục vụ chúng trên bánh mì nướng hoặc bánh nướng xốp',20,1,'https://www.eatingwell.com/thmb/Ws0CqCGagBMKyJ7DH_vCNrdDDwg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/sous-vide-eggs-c14709f7c1f147abacbde1d6ce91bd1c.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('aaccf66e-ec7a-420c-9ed0-4e8a0d8896dd',1,N'Chuẩn bị nồi cách thủy. Đun nóng nước đến 100 độ C.','','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5e4d5041-820d-4b05-b802-8906b0dc0bb5',2,N'Khi nước đã được, dùng muỗng có rãnh để múc trứng vào nồi. Đậy nồi càng nhiều càng tốt bằng màng bọc thực phẩm hoặc khay nướng.','','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('25cbbbaa-0fe3-4579-bfe6-f98e067048b7',3,N'Nấu trong 15 phút để có độ sệt của lòng đỏ.','','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('75df2b58-43dd-42e2-a4a1-2e26ea0f8837',4,N'Bóc trứng và đặt 2 quả vào mỗi 4 bát phục vụ; rắc đều với muối.','','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1f2e07cb-43b4-46be-af08-8487588fcf96',5,N'Nướng bánh mì lên và dùng cùng với trứng cho bữa sáng','','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('10156eb0-29e4-4e41-9d74-856340246407','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3','d2985015-ad21-4c3a-8f22-608be39f47c0',8.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('70a7c4f8-a2e5-4cff-a37d-93fcb75f03b3','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3','e41475bc-ef90-4ac7-95d0-017c9da58216',0.33,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3d9f6b8c-9625-42ad-bb9a-12b7cbb9dff5','92df7117-d1fa-420a-9771-6d7f54fe5d33','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',85.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b47805a2-9b7e-40f9-96c8-0a932b2431e0','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',143.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('05c3ab3c-9527-4143-b7d3-63424412bdd0','71c34c3c-18da-4745-8b7d-4774800170ec','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7fcf7448-d56c-45ec-896e-f61aa71a0bd6','52c2699b-b628-4499-83d4-d478f7f9c902','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cc5313d9-3467-42ea-b328-f6689e6c9b8b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6c11fb0d-5f2b-48bd-bdba-cad927bd9416','73bba7e2-640f-48da-b681-64d79c2ae9e0','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bdb43a8a-3180-4e3a-b5bb-d8bc8fd31444','998ed6be-f894-4d11-bde8-22e46900a926','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('883c899c-7cdd-4daa-85ae-bf345abb59f7','1d67d321-d82e-415e-8297-b24427aa46ae','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',372.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('851b297d-541e-4445-b5fc-4d980ce8d82a','8239b53c-b2c4-480d-a8fa-2f4660c678be','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3',262.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('4b16584e-daea-4faa-b13d-843ad9047ad5','3ecf9dd4-1834-4bd6-93e8-303c6fa651c3');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('75c1f050-5b2c-4caa-909e-faba8bb987b8',N'Thịt bò kho cùng cà rốt và khoai tây - phục vụ cho 4 người',N'Sự pha trộn gia vị trong công thức thịt bò hầm tốt cho sức khỏe này — quế, hạt tiêu và đinh hương — sự kết hợp này rất phù hợp trong các món mặn.',120,2,'https://www.eatingwell.com/thmb/avwAdZ79zLdoA3DV7mPeBe1smkw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/4293510-89a8eff3f3be4b9d9d9069d3b1ac62ae.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c3350f1a-7a00-48c5-a88c-de23873ff281',1,N'Kết hợp muối, quế, hạt tiêu và đinh hương trong một bát nhỏ. Xoa đều hỗn hợp lên thịt bò.','','75c1f050-5b2c-4caa-909e-faba8bb987b8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('29ef49b7-5286-4dae-b8e7-a331f85a3001',2,N'Đun nóng dầu trong một chảo lớn trên lửa vừa. Thêm thịt bò và nấu cho đến khi có màu nâu, 4 đến 5 phút mỗi bên. Chuyển sang nồi nấu chậm.','','75c1f050-5b2c-4caa-909e-faba8bb987b8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('52e9ac0e-3a9c-4540-9604-af60cf7fe788',3,N'Thêm hành tây và tỏi vào chảo. Nấu, khuấy, trong 2 phút. Thêm rượu và cà chua; đun sôi','','75c1f050-5b2c-4caa-909e-faba8bb987b8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3617693c-1112-4848-90e5-45b1f6e18a84',4,N'Thêm hỗn hợp vào nồi nấu chậm cùng với cà rốt và khoai tây.','','75c1f050-5b2c-4caa-909e-faba8bb987b8');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a3ac6ca1-182a-4a4c-bbdf-72a253edf131',5,N'Đậy nắp và nấu ở chế độ nhiệt cao trong 2 giờLấy thịt bò ra khỏi nồi nấu chậm và cắt lát. Phục vụ thịt bò với nước sốt và rau, trang trí với húng quế, nếu muốn.','','75c1f050-5b2c-4caa-909e-faba8bb987b8');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6042d24e-61b3-421f-8e57-8acd916dd4bd','75c1f050-5b2c-4caa-909e-faba8bb987b8','e41475bc-ef90-4ac7-95d0-017c9da58216',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1fd5e63d-5897-44e4-821b-e60d2f097629','75c1f050-5b2c-4caa-909e-faba8bb987b8','9ca7bcff-e5ee-4f5b-8b77-59792553b388',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3e23eee7-5fff-430a-baf1-9e524d0994b4','75c1f050-5b2c-4caa-909e-faba8bb987b8','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cd59eafa-e1a1-4d19-81bf-affa0c682257','75c1f050-5b2c-4caa-909e-faba8bb987b8','5b339239-9589-4b91-846f-7042177c3e34',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('30e95538-81cc-41a7-9fc8-f722791a3f88','75c1f050-5b2c-4caa-909e-faba8bb987b8','a4546e0c-0056-4e69-8f59-e7fe7f041d42',800.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('815cf226-d2c2-452b-a853-fec9b7c9bdc2','75c1f050-5b2c-4caa-909e-faba8bb987b8','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('412e8004-04dd-4ea8-83e8-baca6863ff03','75c1f050-5b2c-4caa-909e-faba8bb987b8','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4e5470be-21b3-46c0-834c-ade3833b1b9c','75c1f050-5b2c-4caa-909e-faba8bb987b8','d938f228-5967-4e19-b432-34cf16837fb4',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f7693166-2c93-4b6c-9ef4-195cf9ab09df','75c1f050-5b2c-4caa-909e-faba8bb987b8','47baae7e-cef8-40ea-b008-47e720533710',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f205bf27-e6bf-42a3-9cc8-678fcbba1952','75c1f050-5b2c-4caa-909e-faba8bb987b8','770f3d34-b289-44eb-94fd-7b7bb598181d',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8c680d0f-a160-459c-b0e4-62645274899a','75c1f050-5b2c-4caa-909e-faba8bb987b8','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('783f1a17-f007-49e8-86d3-45d7235eecbe','75c1f050-5b2c-4caa-909e-faba8bb987b8','169e7e6a-2518-47a5-b7bf-c6d76ef16079',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f5044e8e-af69-47f8-b87f-7d7192e7c3db','92df7117-d1fa-420a-9771-6d7f54fe5d33','75c1f050-5b2c-4caa-909e-faba8bb987b8',270.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b6007344-371d-4c27-b415-6d2e01035b2a','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','75c1f050-5b2c-4caa-909e-faba8bb987b8',318.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('64c129e4-1ca9-45eb-8d0b-eea70c5bb30e','71c34c3c-18da-4745-8b7d-4774800170ec','75c1f050-5b2c-4caa-909e-faba8bb987b8',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f29b074c-e435-45f7-9108-6f48812863cf','52c2699b-b628-4499-83d4-d478f7f9c902','75c1f050-5b2c-4caa-909e-faba8bb987b8',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('43613a24-0e1c-45bf-be1d-d7468129afc8','6631457d-6680-4faa-aa2b-1e7e21d12bd4','75c1f050-5b2c-4caa-909e-faba8bb987b8',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c0174e9f-6e94-43c5-9343-4db7b6e8a1c9','73bba7e2-640f-48da-b681-64d79c2ae9e0','75c1f050-5b2c-4caa-909e-faba8bb987b8',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f7497e5a-1c2b-4075-aba4-76920c7e3184','998ed6be-f894-4d11-bde8-22e46900a926','75c1f050-5b2c-4caa-909e-faba8bb987b8',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d59cf31f-64cb-466c-b35b-90b2e07e1f55','1d67d321-d82e-415e-8297-b24427aa46ae','75c1f050-5b2c-4caa-909e-faba8bb987b8',99.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('56907173-2bf2-47a9-a31e-e0ad6f76e822','8239b53c-b2c4-480d-a8fa-2f4660c678be','75c1f050-5b2c-4caa-909e-faba8bb987b8',538.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','75c1f050-5b2c-4caa-909e-faba8bb987b8');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','75c1f050-5b2c-4caa-909e-faba8bb987b8');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('01a460d7-79ad-4bcd-add3-5bb4170f6e5f',N'Sườn bỏ nướng nấu mềm - phục vụ cho 4 người',N'Bây giờ, đây là công thức làm món sườn non thịt bò mà bạn có thể phục vụ cho bạn bè—ngay cả trong ngày lễ.',120,3,'https://www.eatingwell.com/thmb/rJDUWTUxeNsHSpCDznRBYJNNGnE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/58730381-ec008a5974f8421d90f72ebce3cfe572.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8de32b09-db66-4cdf-aac9-012b88da5e04',1,N'Ướp sườn với 0.5 thìa muối tiêu. Đun nóng 1 muỗng canh dầu trong chảo lớn trên lửa vừa và cao.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2e1d38ae-3823-41f9-87a7-ddc8ae2bad97',2,N'Thêm sườn và nấu cho đến khi chín vàng ở tất cả các mặt, tổng cộng khoảng 5 phút.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7c7faed7-4421-4b5e-b80f-d98da290a80f',3,N'Chuyển sang nồi hầm','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('94e7fe8b-bfd6-4bba-8d98-3df2a2f44d93',4,N'Thêm 1 muỗng canh dầu và hành tây còn lại vào chảo; nấu, thỉnh thoảng khuấy, cho đến khi bắt đầu chuyển sang màu nâu, từ 3 đến 5 phút.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('06e9c96c-1fec-4fe3-8ba8-18ae77dbee99',5,N'Khuấy bột cà chua, tỏi và cỏ xạ hương; nấu, khuấy, trong 1 phút.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('67dd2d07-3fbf-4015-bdd8-6ffc7b8914cc',6,N'Thêm giấm và nấu cho đến khi chất lỏng gần như cạn kiệt, từ 3 đến 5 phút.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8ba6d15e-7a34-46df-bac3-3c49f0b040a3',7,N'Chuyển sang nồi hầm và thêm nước dùng. Đậy nắp và nấu ở chế độ nhiệt cao trong 2 giờ','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4888b443-ccf8-43ef-bbaf-392ec5bdce86',8,N'Chuyển sườn ra đĩa phục vụ. Chuyển nước sốt vào một cái chảo vừa và đun sôi ở nhiệt độ cao.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('28781e9f-e8da-4910-9b66-7c702e391d6d',9,N'Đánh bột ngô và nước trong một cái bát nhỏ và thêm vào chất lỏng đang sôi.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1e1d0e94-7830-44b7-ae2a-b945e42c3283',10,N'Nấu, khuấy đều, cho đến khi đặc lại, khoảng 2 phút.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('806ae7ee-dccb-4025-93e8-23e8648c851e',11,N'Phục vụ sườn với nước thịt và rắc rau mùi tây, nếu muốn.','','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('43f86588-e062-4492-8b61-d46215b2ba18','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','2c937db3-edf4-491e-893f-a61cdb43721f',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('76f9bce3-6da2-412a-b249-88327523c3ea','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('854029d3-f206-4e7d-a2be-035ed021e321','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3398a386-fa4a-462b-a174-6ddc861254fb','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('75355f4e-8dde-4252-86db-361d47885c08','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('94d02754-44ba-4118-bc6d-34adbfcaccc1','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','ab3d8983-9055-48c3-811f-2ffa5bc98c67',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('db6a0ad0-7237-4321-a98e-55e2b82ae139','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','d938f228-5967-4e19-b432-34cf16837fb4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('576ea8c4-bfdc-480e-82f5-622d19f56494','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','c632668a-22d3-4a2d-8830-bbbeb8e0aa04',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('835a362c-e73d-4368-86f1-714bb29d474b','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','89d83686-a86e-45d6-b83d-5ddd1c4fcb1e',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('23d491e9-f96b-4cb0-a223-9cb6d866868c','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','0ce6b220-8612-44b6-9f64-7456fd2db886',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('60c492f7-4a03-4eb3-b17c-d41577d6564e','01a460d7-79ad-4bcd-add3-5bb4170f6e5f','9eab6829-cd60-4ab5-b47c-0b0c8737fa51',0.25,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('293ea30b-43cc-44d2-a440-a1723468671f','92df7117-d1fa-420a-9771-6d7f54fe5d33','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',212.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9fff178e-9ed9-473f-ac92-92f5b92a09e2','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',281.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f513ec11-16e5-477c-8c2e-d8aadb16e22c','71c34c3c-18da-4745-8b7d-4774800170ec','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',15.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ad7d30e4-c72f-4a8a-a1bc-15f9c3625487','52c2699b-b628-4499-83d4-d478f7f9c902','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e350718f-1846-4757-a97d-232f398c97bc','6631457d-6680-4faa-aa2b-1e7e21d12bd4','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cc667963-dd67-4669-b2d5-890772241495','73bba7e2-640f-48da-b681-64d79c2ae9e0','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a1882701-f2eb-4882-92a9-cddf61ff2e04','998ed6be-f894-4d11-bde8-22e46900a926','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',20.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('053c7950-44c4-4c23-a121-8699023da77a','1d67d321-d82e-415e-8297-b24427aa46ae','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',59.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('969411f9-03ff-4ae2-b4e0-63c8de475d54','8239b53c-b2c4-480d-a8fa-2f4660c678be','01a460d7-79ad-4bcd-add3-5bb4170f6e5f',416.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','01a460d7-79ad-4bcd-add3-5bb4170f6e5f');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('57445946-1fd5-4293-9b50-34d145c00c19',N'Thịt bò hầm',N'Củ cải tạo hương vị tự nhiên và kết cấu tương tự như khoai tây - cho món thịt bò hầm đậm đà và đầy hương vị này.',50,1,'https://www.eatingwell.com/thmb/HoFRehpKcSgors_7U78VrV4jalI=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5557027-8401cb2a3c4f47af93ba0d3e9386ca70.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5966fa81-8edf-435b-8407-cc45002a5260',1,N'Đun nóng dầu trong một cái nồi lớn trên lửa vừa.','','57445946-1fd5-4293-9b50-34d145c00c19');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('03c80032-958d-4915-bc1d-9d3c6595873a',2,N'Thêm thịt bò, hành tây, nấm, hương thảo, muối và hạt tiêu. Nấu, khuấy đều, cho đến khi thịt chín vàng đều các mặt, từ 5 đến 8 phút.','','57445946-1fd5-4293-9b50-34d145c00c19');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e694c001-ad91-4084-9473-2f1698a09e9a',3,N'Khuấy bột cà chua; nấu, khuấy, trong 1 phút. Thêm rượu và nấu thêm 1 phút nữa.','','57445946-1fd5-4293-9b50-34d145c00c19');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('200be882-e467-47ca-82f9-dde9bfe508a2',4,N'Thêm nước dùng, củ cải và cà rốt. Đun sôi.','','57445946-1fd5-4293-9b50-34d145c00c19');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8c624634-46a9-4847-aac2-ddebd7bdc893',5,N'Nấu, thỉnh thoảng khuấy, cho đến khi thịt bò và rau mềm và nước dùng hơi đặc lại, khoảng 30 phút.','','57445946-1fd5-4293-9b50-34d145c00c19');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2f3f588c-4fa4-4eb9-93a2-07190fe139ec',6,N'Bày thật đẹp ra đĩa và hưởng thức','','57445946-1fd5-4293-9b50-34d145c00c19');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a874c98c-21e7-4719-8e22-a3f043b01b45','57445946-1fd5-4293-9b50-34d145c00c19','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8ab8e1fa-97f2-4e11-a7e8-0e1a9641dfe9','57445946-1fd5-4293-9b50-34d145c00c19','a4546e0c-0056-4e69-8f59-e7fe7f041d42',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d3a534e5-5de2-43ee-aa52-1804d2f1b92d','57445946-1fd5-4293-9b50-34d145c00c19','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9ed23d6f-92b3-4bb8-9102-a7b128cd1814','57445946-1fd5-4293-9b50-34d145c00c19','88d4fd3d-ce2d-438a-ba72-9cab5ae1c7a7',225.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('996aa06e-bc1c-415b-a5ba-055d6d09fbbf','57445946-1fd5-4293-9b50-34d145c00c19','5b339239-9589-4b91-846f-7042177c3e34',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a3288aa3-8c27-4239-b5a3-7da03601d59b','57445946-1fd5-4293-9b50-34d145c00c19','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4497ce4f-f2bd-4daf-8c8d-57929f4c06eb','57445946-1fd5-4293-9b50-34d145c00c19','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7703d4a1-cd85-4e5b-add3-39977a1c8011','57445946-1fd5-4293-9b50-34d145c00c19','7d3a888d-541d-4569-9816-dea520471bf4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('47b9a984-56a7-4903-849b-37b3645984e8','57445946-1fd5-4293-9b50-34d145c00c19','770f3d34-b289-44eb-94fd-7b7bb598181d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('656ca2a5-baa4-4276-bd25-8fea462d8bfc','57445946-1fd5-4293-9b50-34d145c00c19','47baae7e-cef8-40ea-b008-47e720533710',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('61c96796-7929-45ac-9205-75da6b6b3986','57445946-1fd5-4293-9b50-34d145c00c19','89d83686-a86e-45d6-b83d-5ddd1c4fcb1e',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e3189a5d-8979-4ff7-b38a-9b445e51c1ff','57445946-1fd5-4293-9b50-34d145c00c19','2bd769bd-570f-4e51-8365-879a21972ad2',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2bc61c03-64c5-4d59-8ab5-7cd06f133456','57445946-1fd5-4293-9b50-34d145c00c19','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ac4eea1b-4982-4f31-be7a-1bbea98f368a','92df7117-d1fa-420a-9771-6d7f54fe5d33','57445946-1fd5-4293-9b50-34d145c00c19',160.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a3ca165e-4d20-47f3-8c6f-64601e02daa8','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','57445946-1fd5-4293-9b50-34d145c00c19',206.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('722a2ac8-3a5f-4c53-9568-3634ba9c0b10','71c34c3c-18da-4745-8b7d-4774800170ec','57445946-1fd5-4293-9b50-34d145c00c19',9.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a02790ba-6c84-4c29-90ea-f4da92ac7d94','52c2699b-b628-4499-83d4-d478f7f9c902','57445946-1fd5-4293-9b50-34d145c00c19',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ff2b4d9d-0230-438e-8276-7e1bb180a6aa','6631457d-6680-4faa-aa2b-1e7e21d12bd4','57445946-1fd5-4293-9b50-34d145c00c19',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7b382ec3-2551-46ec-863b-3d5c0cb453f6','73bba7e2-640f-48da-b681-64d79c2ae9e0','57445946-1fd5-4293-9b50-34d145c00c19',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cb1598ae-1293-4717-8109-ba66d300e200','998ed6be-f894-4d11-bde8-22e46900a926','57445946-1fd5-4293-9b50-34d145c00c19',21.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e4101d88-6c65-4d70-82b2-4ef935288a99','1d67d321-d82e-415e-8297-b24427aa46ae','57445946-1fd5-4293-9b50-34d145c00c19',48.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f63ccb95-6616-49b1-ac22-8c306683f111','8239b53c-b2c4-480d-a8fa-2f4660c678be','57445946-1fd5-4293-9b50-34d145c00c19',424.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','57445946-1fd5-4293-9b50-34d145c00c19');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('6c75de85-a4ba-4a02-a98d-794e5584408f',N'Thịt heo hầm',N'Món thịt lợn hầm cổ điển có khả năng thích nghi cao này rất thịnh soạn và dễ chịu. Bạn có thể sử dụng bất kỳ loại thảo mộc tươi nào và thay đổi các loại rau củ cho phù hợp với khẩu vị của bạn.',120,3,'https://www.eatingwell.com/thmb/CTVzShqpY_TN8C_cjO33WQ_lX7A=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/ClassicPorkStew_058-51b817dd012d40feb047ff4c321bbde6.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1ca15a07-cf13-49fb-b222-e76499618b9c',1,N'Phủ thịt lợn với bột mì, 1 muỗng cà phê muối và hạt tiêu trong một bát lớn cho đến khi được phủ đều.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9df495cb-eef5-4b34-bbdc-2e0afe596a07',2,N'Đun nóng dầu ở nhiệt độ trung bình cao.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2fb5e133-fc2a-4a5c-b36f-80690f1adae4',3,N'Thêm một nửa số thịt lợn; nấu, cho đến khi có màu nâu ở đáy, khoảng 3 phút.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5716fc61-cfdb-49c6-8294-463b39e1377f',4,N'Khuấy và tiếp tục nấu, thỉnh thoảng khuấy cho đến khi chín vàng đều các mặt, khoảng 3 phút. Chuyển thịt vào một cái bát sạch; lặp lại với thịt lợn còn lại.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('35a81601-d8f7-458b-90ef-594b58eb78ea',5,N'Giảm nhiệt xuống mức trung bình. Thêm hành tây vào nồi; nấu, khuấy thường xuyên, cho đến khi mềm, 3 đến 5 phút.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c0bfa958-2053-4ed0-a9ad-ecb3bda02d96',6,N'Thêm cà chua; nấu, khuấy liên tục, cho đến khi cà chua sẫm màu, khoảng 1 phút. Thêm rượu; nấu, cho đến khi giảm khoảng một nửa, khoảng 1 phút.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('af66e411-432c-419d-a6d3-f7e147d376ea',7,N'cho thịt lợn đã chín vàng vào nồi. Tăng nhiệt lên mức trung bình cao và đun sôi; giảm nhiệt xuống thấp, đậy nắp và nấu cho đến khi thịt lợn gần mềm, 30 đến 40 phút.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b94eab36-8d39-4b69-81db-ab1772d43a02',8,N'Khuấy khoai tây, cà rốt, rau mùi tây và nấm. Đậy nắp và nấu, thỉnh thoảng khuấy, cho đến khi rau mềm, 30 đến 40 phút.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b1b77fc2-664a-47c0-9806-d1e480c2c0a3',9,N'Đánh bông bột ngô để tạo thành hỗn hợp sệt. Khuấy hỗn hợp trở lại món hầm; tăng nhiệt lên mức trung bình. nấu đậu Hà Lan; nấu cho đến khi đậu có màu xanh sáng và chất lỏng đặc lại, khoảng 2 phút.','','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('19fd37c3-17bc-4c7b-936c-2d4df73a6194','6c75de85-a4ba-4a02-a98d-794e5584408f','87987880-0a96-422e-a521-2713e77fbd67',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('210e9265-4831-4e8a-b7d4-4cf36472ccd8','6c75de85-a4ba-4a02-a98d-794e5584408f','7d3a888d-541d-4569-9816-dea520471bf4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2f1071cc-5afd-4b99-b19d-5d6b1ab0fe54','6c75de85-a4ba-4a02-a98d-794e5584408f','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4428a61a-5001-4066-91d7-fc1881ca881f','6c75de85-a4ba-4a02-a98d-794e5584408f','e41475bc-ef90-4ac7-95d0-017c9da58216',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bd2b552b-4222-4c29-8650-64f6e45cfafd','6c75de85-a4ba-4a02-a98d-794e5584408f','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('afa89776-f065-4060-b183-ca7f689bc821','6c75de85-a4ba-4a02-a98d-794e5584408f','d938f228-5967-4e19-b432-34cf16837fb4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d0cc10f0-493f-46e9-936a-08b4ff73f2e6','6c75de85-a4ba-4a02-a98d-794e5584408f','770f3d34-b289-44eb-94fd-7b7bb598181d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cff7664a-42ed-480e-afa8-07585af28e9a','6c75de85-a4ba-4a02-a98d-794e5584408f','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f890da8b-5879-4dea-91f3-395e9cd9bc36','6c75de85-a4ba-4a02-a98d-794e5584408f','89d83686-a86e-45d6-b83d-5ddd1c4fcb1e',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('09382e45-4f7a-483b-9ae9-e94d8e9a0bca','6c75de85-a4ba-4a02-a98d-794e5584408f','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('cc1056f5-bd62-41e7-b76f-c901036c0aa6','6c75de85-a4ba-4a02-a98d-794e5584408f','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eb97a642-2cc2-4b3d-aeb0-33e0f1edf3ba','6c75de85-a4ba-4a02-a98d-794e5584408f','88d4fd3d-ce2d-438a-ba72-9cab5ae1c7a7',150.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eaeabf76-8cc7-4f20-905b-0af69960f3ee','6c75de85-a4ba-4a02-a98d-794e5584408f','ef091dc1-3b6a-4a52-b93b-3a05bf37c241',150.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6c4b4c2d-b2ed-4f49-b0eb-c8181eb2a0bc','92df7117-d1fa-420a-9771-6d7f54fe5d33','6c75de85-a4ba-4a02-a98d-794e5584408f',276.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2dfbe36d-c44a-46d5-b274-dd738bbae1fa','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','6c75de85-a4ba-4a02-a98d-794e5584408f',340.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('65ce15a5-a8fd-492e-92ae-d52602b41a03','71c34c3c-18da-4745-8b7d-4774800170ec','6c75de85-a4ba-4a02-a98d-794e5584408f',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('90543bcf-7334-4fb7-b09d-bb6d8839bb20','52c2699b-b628-4499-83d4-d478f7f9c902','6c75de85-a4ba-4a02-a98d-794e5584408f',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8f2bc1ee-beb0-4e4b-8749-d0ca70a5d185','6631457d-6680-4faa-aa2b-1e7e21d12bd4','6c75de85-a4ba-4a02-a98d-794e5584408f',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a7879b60-e218-483f-923a-1d14890cc527','73bba7e2-640f-48da-b681-64d79c2ae9e0','6c75de85-a4ba-4a02-a98d-794e5584408f',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3262c9a0-9422-49bb-b881-06d843292309','998ed6be-f894-4d11-bde8-22e46900a926','6c75de85-a4ba-4a02-a98d-794e5584408f',29.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ffb91c30-e28e-4801-abb7-152863b99bd2','1d67d321-d82e-415e-8297-b24427aa46ae','6c75de85-a4ba-4a02-a98d-794e5584408f',76.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f7005810-e3bf-41c0-af7f-efc796a049e9','8239b53c-b2c4-480d-a8fa-2f4660c678be','6c75de85-a4ba-4a02-a98d-794e5584408f',707.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','6c75de85-a4ba-4a02-a98d-794e5584408f');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('b6eccf25-d584-4215-98d4-b86400c13149',N'Đậu gà hầm cà ri',N'Được đóng gói với các loại rau và đậu gà giàu chất xơ, món hầm thơm này sẽ khiến bạn hài lòng.',55,2,'https://www.eatingwell.com/thmb/tHI6TQ5M4bZgdto8vslQMcNqhak=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/6349104-f7c6d0e430f949cb9be39fc4ee928994.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8780513b-2b63-46f6-a534-3cf45f2a68b4',1,N'Đặt rau chân vịt vào lò vi sóng; thêm 1 muỗng canh nước và đậy nắp.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c461fd39-a681-4c8f-b606-61bb6c2b0122',2,N'Lò vi sóng ở chế độ Cao, thỉnh thoảng khuấy cho đến khi vừa héo, từ 1 đến 2 phút.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0752202a-03cb-498b-ad7f-8cb1952439b0',3,N'Chuyển sang một cái chao để ráo nước. Khi đủ nguội để xử lý, hãy vắt hết nước thừa. Cắt nhỏ và đặt sang một bên.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d70bc34e-11b9-4961-b6c9-296d105e9a81',4,N'Đun nóng dầu trong chảo.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('012de4e6-4f52-40da-8458-3b8f35e3c745',5,N'Thêm hành tây và nấu, khuấy, cho đến khi mờ, khoảng 8 phút. Thêm gừng, ớt, tỏi và bột cà ri; nấu, khuấy, trong 30 giây.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2ae8e9d3-6cea-4dfa-9378-80dc8e03211a',6,N'Thêm cà rốt và 2 muỗng canh nước, đậy nắp và nấu, thỉnh thoảng khuấy, cho đến khi cà rốt mềm, khoảng 10 phút (thêm nước nếu hỗn hợp trở nên khô).','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('929c64e5-48ee-42ef-a467-33863aabb0c0',7,N'Thêm súp lơ; đậy nắp và nấu, thỉnh thoảng khuấy, cho đến khi mềm vừa đủ giòn, thêm 5 đến 10 phút nữa.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9a753d92-a037-4e04-ab69-9957d85b07c3',8,N'Khuấy đậu gà, cà chua, và nước cốt dừa.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3ab3abfd-114e-46de-bc99-58f1b8a51573',9,N'Giảm nhiệt xuống thấp và đun nhỏ lửa không đậy nắp, thỉnh thoảng khuấy trong 15 phút.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9bc4a9b4-e323-451c-9d77-4d7956e79733',10,N'Cho rau chân vịt đã để riêng vào xào qua và đun nóng.','','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c2df1742-af8b-4fd5-b006-d399f37aafb9','b6eccf25-d584-4215-98d4-b86400c13149','7e8b3a78-1456-4bd9-b5df-9491794b1af2',150.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9f5d2baa-fa4e-4af7-bb8d-c1877d311ad9','b6eccf25-d584-4215-98d4-b86400c13149','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0ebcb2ad-18dc-4545-9651-26c97d2e1ee9','b6eccf25-d584-4215-98d4-b86400c13149','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e784a886-6a47-46c9-aa5d-2cd43b156dc8','b6eccf25-d584-4215-98d4-b86400c13149','a6d4322e-e06a-4edb-ac87-91a4eebac40b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b2a498e1-65b2-4148-abfb-ef72beae2df6','b6eccf25-d584-4215-98d4-b86400c13149','35141130-f290-471b-aeb8-20d3c0e529ae',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6948b344-56be-40d2-9d16-32ae3d1bf686','b6eccf25-d584-4215-98d4-b86400c13149','d938f228-5967-4e19-b432-34cf16837fb4',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('13df7967-85d2-413a-9733-dfa1da425c0b','b6eccf25-d584-4215-98d4-b86400c13149','e75f240f-cbe0-4664-827b-54640cf6ddbb',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('22aa7c25-05f8-4d8f-9583-ac044a9e0627','b6eccf25-d584-4215-98d4-b86400c13149','169e7e6a-2518-47a5-b7bf-c6d76ef16079',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('24247eed-e370-44b5-ad46-cee6e04ecd52','b6eccf25-d584-4215-98d4-b86400c13149','14094c14-951b-4d84-9d23-d9c81db2a9eb',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('590ba3ce-0a84-4304-8cd9-0eff200bb0c4','b6eccf25-d584-4215-98d4-b86400c13149','5301f7d1-6703-49fc-a46e-1db0d4b7396d',230.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2238f2f3-1a25-45d5-8155-290c37c9a754','b6eccf25-d584-4215-98d4-b86400c13149','770f3d34-b289-44eb-94fd-7b7bb598181d',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d0569405-ceca-4238-ac76-5f787eeaf18f','92df7117-d1fa-420a-9771-6d7f54fe5d33','b6eccf25-d584-4215-98d4-b86400c13149',201.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ebb75aa3-f3fe-4879-ab4b-513f02113a59','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','b6eccf25-d584-4215-98d4-b86400c13149',249.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ad8b3948-3a9b-4e13-ba37-e742af659fdb','71c34c3c-18da-4745-8b7d-4774800170ec','b6eccf25-d584-4215-98d4-b86400c13149',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a87fee6c-ddcd-4328-b5c5-aeb4e42a4fbb','52c2699b-b628-4499-83d4-d478f7f9c902','b6eccf25-d584-4215-98d4-b86400c13149',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1d2d4320-6adc-4557-aada-f20ea353b26a','6631457d-6680-4faa-aa2b-1e7e21d12bd4','b6eccf25-d584-4215-98d4-b86400c13149',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e0dbc4e3-e5f9-472e-aa06-875a1aa423f0','73bba7e2-640f-48da-b681-64d79c2ae9e0','b6eccf25-d584-4215-98d4-b86400c13149',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2a2a2200-68f8-409a-a51e-d3f5cf403eae','998ed6be-f894-4d11-bde8-22e46900a926','b6eccf25-d584-4215-98d4-b86400c13149',11.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f9ae28bf-6e31-478a-9777-6d297f4fedbc','1d67d321-d82e-415e-8297-b24427aa46ae','b6eccf25-d584-4215-98d4-b86400c13149',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3a106e43-711f-4e55-aa85-f92b43e293bf','8239b53c-b2c4-480d-a8fa-2f4660c678be','b6eccf25-d584-4215-98d4-b86400c13149',309.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','b6eccf25-d584-4215-98d4-b86400c13149');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('832ef964-e21b-4601-a74e-2782d45fc9b6',N'Cơm tôm áp chảo, dứa và ớt',N'Bữa tối hải sản cực kỳ dễ làm này sử dụng dứa tươi và nước sốt kiểu tôm tạo nên hương vị ngọt ngào và bùi bùi.',20,1,'https://www.eatingwell.com/thmb/Os77AM_GpKQfHV2J_rOquaZGwbU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/sheet-pan-hawaiian-shrimp-ck-1803-2000-2c06f17eadc7480a834d730602d75b97.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('075d41a0-2c21-46f8-8655-37432340dceb',1,N'Làm nóng lò ở nhiệt độ 225 độ C. Đặt một khay nướng có viền vào lò nướng','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d9d555a6-320f-463f-a735-caf399015902',2,N'Cho gạo và dầu vào tô. Sử dụng ngón tay của bạn để chia nhỏ gạo và bôi dầu.','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c6602c6e-4154-4b73-a3af-d32162625400',3,N'Cẩn thận lấy chảo ra khỏi lò; dàn đều hỗn hợp cơm ở giữa chảo.','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f1d935bb-9a85-42c1-9b85-ba13b8b7d7a0',4,N'Nướng trong lò làm nóng trước trong 5 phút; khuấy đều.','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2c40828b-5963-4b6b-be74-ef22e6c7d70e',5,N'Cơm với dứa và ớt chuông; nướng ở 225 độ C trong 5 phút.','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('824fc06f-2639-4913-a8cd-302ba65d2c74',6,N'Xếp tôm lên trên hỗn hợp cơm; nướng ở nhiệt độ 225 độ C cho đến khi tôm chín, khoảng 6 phút.','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('05f2e381-8888-4982-abf0-cdd6080ec1f9',7,N'Cho nước tương, đường và giấm vào bát dùng được trong lò vi sóng. Lò vi sóng ở mức cao 45 giây.','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6d142460-f119-42db-917c-4d2467898642',8,N'Đánh cho đến khi đường tan. Rưới đều trên chảo. Thêm hạt tiêu đen','','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('60a25df6-fc3b-4abc-8f81-3c22a2b5a0f5','832ef964-e21b-4601-a74e-2782d45fc9b6','60b85c2f-4c45-4179-b320-37aa0cd9039e',230.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('28435def-fd59-4c9b-9ade-f5843435d5c2','832ef964-e21b-4601-a74e-2782d45fc9b6','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6a46c7e6-6ad7-416a-8ef6-c6f95657c8b7','832ef964-e21b-4601-a74e-2782d45fc9b6','d36fc48e-fbba-442e-88bc-9ed7628ba53e',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d99114ad-e437-452d-8b3e-4ab47ad57fe1','832ef964-e21b-4601-a74e-2782d45fc9b6','3f2bdf45-02f5-456d-a5b0-d7792645b980',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('36b96b16-1216-4235-bffc-f14207655b55','832ef964-e21b-4601-a74e-2782d45fc9b6','469dd1e0-f903-4b82-ad7d-b1c8392f2d5b',570.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eb4b5b02-bf7e-471f-8d53-30a511423c95','832ef964-e21b-4601-a74e-2782d45fc9b6','34dcee1b-8156-4c15-91d5-c3b20854621a',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('54e457c6-68cd-4964-8b2e-ec5a41aff9a9','832ef964-e21b-4601-a74e-2782d45fc9b6','bc4f0475-7cb3-4764-86ed-d1b0c2430810',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b7e8b719-3bb5-4fd6-b05e-74a162c1904c','832ef964-e21b-4601-a74e-2782d45fc9b6','c632668a-22d3-4a2d-8830-bbbeb8e0aa04',1.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d4ca1e42-1feb-472f-b0ff-00add8a19042','832ef964-e21b-4601-a74e-2782d45fc9b6','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d059bf01-b8fb-49ad-ab33-0aabe47dbf70','92df7117-d1fa-420a-9771-6d7f54fe5d33','832ef964-e21b-4601-a74e-2782d45fc9b6',436.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0a91cc89-6ce9-4c17-9bfc-42ff0c461352','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','832ef964-e21b-4601-a74e-2782d45fc9b6',505.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8ce866f7-3710-42ab-9c59-b571466ab145','71c34c3c-18da-4745-8b7d-4774800170ec','832ef964-e21b-4601-a74e-2782d45fc9b6',14.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('fed9b16c-453c-4ff3-bda1-af735a588702','52c2699b-b628-4499-83d4-d478f7f9c902','832ef964-e21b-4601-a74e-2782d45fc9b6',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('05d4f76a-2dcd-4011-ae11-900525afd83c','6631457d-6680-4faa-aa2b-1e7e21d12bd4','832ef964-e21b-4601-a74e-2782d45fc9b6',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e894cbd6-757a-47d1-a0b5-fb9c7e8788ae','73bba7e2-640f-48da-b681-64d79c2ae9e0','832ef964-e21b-4601-a74e-2782d45fc9b6',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4dfe003d-d26d-4b86-a7a7-93087b4c9ff1','998ed6be-f894-4d11-bde8-22e46900a926','832ef964-e21b-4601-a74e-2782d45fc9b6',26.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('747e3a51-10fc-4a32-8386-cc5141af85db','1d67d321-d82e-415e-8297-b24427aa46ae','832ef964-e21b-4601-a74e-2782d45fc9b6',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7913c8e7-a644-487b-9b81-082e7b50bade','8239b53c-b2c4-480d-a8fa-2f4660c678be','832ef964-e21b-4601-a74e-2782d45fc9b6',655.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','832ef964-e21b-4601-a74e-2782d45fc9b6');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('aa28f2ef-7aba-4f69-9fcf-2621c6866213',N'Đùi gà nướng với khoai tây',N'Món gà nướng đem lại vị ngon ngất ngây trong bữa ăn chính hoặc có thể là bữa ăn phụ',45,2,'https://www.eatingwell.com/thmb/694bC7mO_J8usHdljHc_nP6NA08=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/6885392-2345638fcd91496783cf27e7d52036c6.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('433e8cca-dbdc-406b-9cb0-e694395099b7',1,N'Sắp xếp các giá đỡ ở một phần ba trên và dưới của lò; làm nóng trước ở nhiệt độ 225 độ C','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c03175bd-32fd-4d34-8cac-c4d21a00367f',2,N'Cho khoai tây, hành tây, dầu, hương thảo, 0.5 thìa cà phê tiêu và 0.25 thìa cà phê muối vào tô lớn.','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3064f93b-14d2-41a1-8156-d483f2801e46',3,N'Trải đều trên chảo đã chuẩn bị. Cho thịt gà vào tô, rắc 2 thìa cà phê hạt nêm, 0.25 thìa cà phê tiêu còn lại và 0.25 thìa cà phê muối.','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4290240a-38f4-4d7d-b010-4176578e2551',4,N'Đặt gà lên trên rau.','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6dabf35a-cf7c-4c9a-aaa3-ba06c4ba89cf',5,N'Nướng gà và rau trên giá dưới cùng, khuấy một lần khoảng 30 phút','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e9f84a44-8b74-479a-8213-3769ee708eac',6,N'Nướng cho đến khi gà bắt đầu có màu nâu, khoảng 3 phút.','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('913741e0-394e-488b-a32f-c2c396e8b0d8',7,N'Trong khi đó, khuấy kem và nước cốt chanh với 1 thìa cà phê gia vị thảo mộc còn lại và một chút muối trong một bát nhỏ.','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a57ad2ec-ef19-4785-a278-3753efaba3fd',8,N'Phục vụ gà và rau với nước sốt.','','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f667bf64-eade-402a-9302-490453c72118','aa28f2ef-7aba-4f69-9fcf-2621c6866213','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('368b9a93-4e2f-4ed2-8fe9-b4033897ec01','aa28f2ef-7aba-4f69-9fcf-2621c6866213','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b72448b6-6262-429f-b3b8-254e0a006697','aa28f2ef-7aba-4f69-9fcf-2621c6866213','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3b3a69c6-2284-4897-9615-d1775ad71e30','aa28f2ef-7aba-4f69-9fcf-2621c6866213','33502109-1cbc-4238-a6e7-2a647a5e4640',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f1e8155a-6ac6-4ed8-88c6-ea55a258812f','aa28f2ef-7aba-4f69-9fcf-2621c6866213','2d679e49-a61a-4801-b500-2d438b441231',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fad04cf5-8f53-4649-aba9-72603f533870','aa28f2ef-7aba-4f69-9fcf-2621c6866213','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bfa818a1-2a0d-457f-86ca-95770549ac7f','aa28f2ef-7aba-4f69-9fcf-2621c6866213','93d93289-1e10-446d-afcb-05938dfcdc8e',900.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('62227f24-db3b-4dfc-a1d7-dacddb291a99','aa28f2ef-7aba-4f69-9fcf-2621c6866213','0a621540-e3c5-4f04-b6af-cf0276eb16e8',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('334db9f4-f422-4e95-87ab-86e97cfea93e','aa28f2ef-7aba-4f69-9fcf-2621c6866213','03e26134-35df-4228-8b56-6d403a163af1',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a693161b-4716-4a3d-b6a5-0c9a1c290797','92df7117-d1fa-420a-9771-6d7f54fe5d33','aa28f2ef-7aba-4f69-9fcf-2621c6866213',467.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('96571b88-10bd-404a-a555-77d7e9037624','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','aa28f2ef-7aba-4f69-9fcf-2621c6866213',552.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('68f5293d-25e0-4f83-b0da-39fd26ce3c12','71c34c3c-18da-4745-8b7d-4774800170ec','aa28f2ef-7aba-4f69-9fcf-2621c6866213',19.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5874c99c-ba61-4557-841c-71048260bbc2','52c2699b-b628-4499-83d4-d478f7f9c902','aa28f2ef-7aba-4f69-9fcf-2621c6866213',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2b6ffa7b-0fdc-4efa-9ce7-32036397965c','6631457d-6680-4faa-aa2b-1e7e21d12bd4','aa28f2ef-7aba-4f69-9fcf-2621c6866213',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e0307ebb-631a-46b7-a126-b7b357ec7d3d','73bba7e2-640f-48da-b681-64d79c2ae9e0','aa28f2ef-7aba-4f69-9fcf-2621c6866213',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8efaa6af-b60b-47fc-8821-0520c4bcbed7','998ed6be-f894-4d11-bde8-22e46900a926','aa28f2ef-7aba-4f69-9fcf-2621c6866213',51.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1e243da5-de11-4829-9dfc-96695a7c9006','1d67d321-d82e-415e-8297-b24427aa46ae','aa28f2ef-7aba-4f69-9fcf-2621c6866213',263.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6cce2483-c07e-4c31-90bd-9a1919c2020d','8239b53c-b2c4-480d-a8fa-2f4660c678be','aa28f2ef-7aba-4f69-9fcf-2621c6866213',713.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','aa28f2ef-7aba-4f69-9fcf-2621c6866213');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('b7e07197-85aa-4768-8e3c-2c9cc3b96071',N'Tôm nấu với cà chua',N'Nhờ nấu tôm nhanh, cà chua tạo thêm màu sắc và độ chua, trong khi húng quế xắt nhỏ mang lại sự tươi mát',25,1,'https://www.eatingwell.com/thmb/68oZqL0vx5MRqPg6s6XbANwfEPY=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/one-pot-shrimp-with-tomatoes-and-feta-287f15e998cd4526ad82c90d96b18890.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0adfc82b-0568-4250-b596-28bb14afc9c0',1,N'Đun nóng dầu trong một chảo lớn trên lửa vừa.','','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5746bf01-499c-477f-aa58-76417c8d67e4',2,N'Thêm hành tây và nấu, khuấy, cho đến khi bắt đầu mềm, khoảng 2 phút.','','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('358e8a91-57f5-4a24-aa0f-84f3a77b2355',3,N'Thêm tỏi, ớt chuông, muối và hạt tiêu; nấu, khuấy, trong 1 phút.','','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e244802c-6a6c-414d-bd63-cedae2e4be29',4,N'Khuấy cà chua và rượu vang; đun nhỏ lửa và nấu, khuấy đều, cho đến khi giảm nhẹ, khoảng 3 phút.','','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('065ea543-bb00-49b0-8855-a48d2b35fc95',5,N'hêm tôm và nấu, khuấy, cho đến khi vừa chín tới, 3 đến 4 phút.','','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4896b22a-bf71-4a07-be71-e16e56a70969',6,N'Tắt bếp và rắc húng quế.','','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b83e9121-33fe-41fc-bb33-58a8c7b68b64','b7e07197-85aa-4768-8e3c-2c9cc3b96071','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b4dc6e6c-c775-493e-b3ae-0fd1e8b00caa','b7e07197-85aa-4768-8e3c-2c9cc3b96071','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('06939f40-4ca9-4f82-b3a1-3d7aab63b51e','b7e07197-85aa-4768-8e3c-2c9cc3b96071','d938f228-5967-4e19-b432-34cf16837fb4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('be0a4726-edfb-400b-a031-36442a13ee42','b7e07197-85aa-4768-8e3c-2c9cc3b96071','3f2bdf45-02f5-456d-a5b0-d7792645b980',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d703092c-fe0f-4523-a947-e2b9140f2007','b7e07197-85aa-4768-8e3c-2c9cc3b96071','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('67021b9d-e64d-4397-bf11-fa2cc00b8f4b','b7e07197-85aa-4768-8e3c-2c9cc3b96071','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4f4d7b0a-9632-47e0-8c32-e53e3339306e','b7e07197-85aa-4768-8e3c-2c9cc3b96071','770f3d34-b289-44eb-94fd-7b7bb598181d',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('da4a1fd1-d7bd-407f-9a7f-cc17c17c5bb4','b7e07197-85aa-4768-8e3c-2c9cc3b96071','47baae7e-cef8-40ea-b008-47e720533710',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7f747c61-507f-405a-b6d7-0d1428b0eaa2','b7e07197-85aa-4768-8e3c-2c9cc3b96071','469dd1e0-f903-4b82-ad7d-b1c8392f2d5b',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d3f4c279-bd1a-486a-a05c-063b68f2d9a1','b7e07197-85aa-4768-8e3c-2c9cc3b96071','aca4cefb-f0a7-4d5e-86f2-890b15af7fda',100.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('85ff9d82-897a-41b3-862e-27b72ad60771','92df7117-d1fa-420a-9771-6d7f54fe5d33','b7e07197-85aa-4768-8e3c-2c9cc3b96071',167.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('358b9fce-9436-4b80-b7b6-30fff2cab0d0','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','b7e07197-85aa-4768-8e3c-2c9cc3b96071',203.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c1d58780-fe86-4e56-8f24-7dde93557186','71c34c3c-18da-4745-8b7d-4774800170ec','b7e07197-85aa-4768-8e3c-2c9cc3b96071',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c0bd4527-dbe8-4681-8b56-3c3e404c8fc5','52c2699b-b628-4499-83d4-d478f7f9c902','b7e07197-85aa-4768-8e3c-2c9cc3b96071',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9b7f420b-4c1e-4bdc-89c6-6f2d3ef9fed3','6631457d-6680-4faa-aa2b-1e7e21d12bd4','b7e07197-85aa-4768-8e3c-2c9cc3b96071',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('96cc0ce1-f7e0-4ab1-90ec-1f12566ce753','73bba7e2-640f-48da-b681-64d79c2ae9e0','b7e07197-85aa-4768-8e3c-2c9cc3b96071',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3095d4cf-5627-4daa-bb20-d8326504d19b','998ed6be-f894-4d11-bde8-22e46900a926','b7e07197-85aa-4768-8e3c-2c9cc3b96071',25.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('83c2bd3b-2a9e-4af7-9d29-5377b3dcd96d','1d67d321-d82e-415e-8297-b24427aa46ae','b7e07197-85aa-4768-8e3c-2c9cc3b96071',194.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('91a6bf13-f9ac-4cca-90f3-593dfc804bfd','8239b53c-b2c4-480d-a8fa-2f4660c678be','b7e07197-85aa-4768-8e3c-2c9cc3b96071',402.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','b7e07197-85aa-4768-8e3c-2c9cc3b96071');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('20be030c-8dac-4f0f-9a45-4dba77f5b041',N'Súp gà đậu trắng',N'Món gà là một ý tưởng tốt cho bữa tối - đặc biệt là trong món súp lấy cảm hứng từ Ý này, món ăn đòi hỏi một miếng bánh mì giòn và một ly rượu vang đỏ.',25,1,'https://www.eatingwell.com/thmb/PO4i8Y5_KF6FE_81mvejWlYRho8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/39338781-52822260ec974d08be232da08240be26.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2cedeab8-f265-4278-bae5-c478b49ee8e9',1,N'Đun nóng dầu trong lò ở nhiệt độ trung bình cao.','','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f07cb0af-2f2f-42dd-a547-6cca8da0be7c',2,N'Thêm tỏi tây và nấu, khuấy thường xuyên, cho đến khi mềm, khoảng 3 phút.','','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('eb08dd95-f5d9-46f2-bede-8e85c5afbadc',3,N'Khuấy cây xô thơm và tiếp tục nấu cho đến khi có mùi thơm, khoảng 30 giây.','','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d96945b6-9a6e-4da6-99a2-ca4c1a029da3',4,N'Khuấy nước dùng và nước, tăng nhiệt lên cao, đậy nắp và đun sôi.','','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1e0f5c0c-96f8-4281-8527-ec5e0160f271',5,N'Thêm đậu và thịt gà và nấu, không đậy nắp, thỉnh thoảng khuấy, cho đến khi nóng đều, khoảng 3 phút.','','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0d045480-6f09-4ce1-b415-7a2917f270e4',6,N'Phục vụ nóng.','','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3900eac9-fd8f-481b-bd11-a9b1b29d2489','20be030c-8dac-4f0f-9a45-4dba77f5b041','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4fa43b7e-3f51-4fbd-879b-7ff497d826cc','20be030c-8dac-4f0f-9a45-4dba77f5b041','80c9697d-769d-4bdc-84e7-f2f808808828',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('86e6e0c7-a88f-4044-ba3c-609bfc802d46','20be030c-8dac-4f0f-9a45-4dba77f5b041','d938f228-5967-4e19-b432-34cf16837fb4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fbd6d18a-a42a-4416-b507-9cf246ac0593','20be030c-8dac-4f0f-9a45-4dba77f5b041','9eab6829-cd60-4ab5-b47c-0b0c8737fa51',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('74f173bf-2764-43b8-a6c3-800c52acf374','20be030c-8dac-4f0f-9a45-4dba77f5b041','b3168ea1-28b3-4ad1-9806-b7b2a58ef13f',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1e56a8c6-f6d8-486e-adb4-140c7f2d8189','20be030c-8dac-4f0f-9a45-4dba77f5b041','6d627c8d-bee4-435b-9a5c-e897ed94646e',550.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0118e33c-66c7-401f-9dda-64e50875d904','92df7117-d1fa-420a-9771-6d7f54fe5d33','20be030c-8dac-4f0f-9a45-4dba77f5b041',179.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('625e1aa7-9a09-44f8-8df3-68ceb72f9867','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','20be030c-8dac-4f0f-9a45-4dba77f5b041',248.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('07e38694-f0e1-4eb8-8fb0-3911806ec884','71c34c3c-18da-4745-8b7d-4774800170ec','20be030c-8dac-4f0f-9a45-4dba77f5b041',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('17cb41aa-cd40-4435-8453-44a451d54762','52c2699b-b628-4499-83d4-d478f7f9c902','20be030c-8dac-4f0f-9a45-4dba77f5b041',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('027d23f5-0530-44d6-8946-3d1a9bec9110','6631457d-6680-4faa-aa2b-1e7e21d12bd4','20be030c-8dac-4f0f-9a45-4dba77f5b041',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('07e08f65-67ca-45a0-8cbd-8ccaeb4ec5c7','73bba7e2-640f-48da-b681-64d79c2ae9e0','20be030c-8dac-4f0f-9a45-4dba77f5b041',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8638f59a-979a-43c7-aba6-c3e5f0144854','998ed6be-f894-4d11-bde8-22e46900a926','20be030c-8dac-4f0f-9a45-4dba77f5b041',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e5f879c6-f860-458a-af41-dbb35baf357f','1d67d321-d82e-415e-8297-b24427aa46ae','20be030c-8dac-4f0f-9a45-4dba77f5b041',79.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3cd43f1e-41f0-407d-852d-081c748f09ee','8239b53c-b2c4-480d-a8fa-2f4660c678be','20be030c-8dac-4f0f-9a45-4dba77f5b041',244.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','20be030c-8dac-4f0f-9a45-4dba77f5b041');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('bf55f3f1-3695-4c64-981a-91d424242dc3',N'Rau chân vịt ăn kèm Atiso Gà',N'Lấy cảm hứng từ nước sốt atisô, chúng tôi đã làm lớp phủ phô mai béo ngậy để phủ lên miếng ức gà cốt lết nấu nhanh để có một bữa ăn cực kỳ hài lòng.',20,1,'https://www.eatingwell.com/thmb/TfO1Y6QVqtvBrLoGxgVnsAe1KC4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/spin-artich-smothered-chick-2000-a6252d0e927b411dbcfbddb4829bdbbf.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4aa2c060-9222-4b15-b60d-239aa527a0b3',1,N'Làm nóng gà thịt ở nhiệt độ cao.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('21090949-4270-4403-918c-7e4f6784b146',2,N'Vắt càng nhiều nước từ rau chân vịt càng tốt. Đặt vào một bát vừa và thêm trái tim atisô, kem nguyên chất và sốt mayonnaise.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('66e96dbf-ba34-4325-94d6-c362174a56a5',3,N'Khuấy để kết hợp.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('631e2848-9e72-4df0-bc52-f32ee3f129d6',4,N'Lau khô gà và rắc hạt tiêu và muối. Đun nóng dầu trong chảo gang lớn hoặc chảo an toàn cho gà thịt khác ở nhiệt độ trung bình cao.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5459a937-66cd-4692-82ab-5ffcb601ca81',5,N'Thêm thịt gà vào chảo và nấu cho đến khi chín vàng, 2 đến 3 phút.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('30cada81-c5f0-4a32-88a7-5606edf6286b',6,N'Lật và nấu thêm 1 phút nữa.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('36f4af4c-db5d-4b45-900f-dc7c90936c1f',7,N'Đổ hỗn hợp rau chân vịt lên gà.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('228b90d1-d89e-4ee6-9c54-5bafd2be2a9d',8,N'Đặt chảo bên dưới gà thịt và nướng từ 2 đến 3 phút.','','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e38207b9-11e1-4626-a6dc-47cba883ff43','bf55f3f1-3695-4c64-981a-91d424242dc3','7e8b3a78-1456-4bd9-b5df-9491794b1af2',280.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3395730f-0b53-4a9d-b9fa-91b9a5730f3c','bf55f3f1-3695-4c64-981a-91d424242dc3','90556bb9-ca8e-4b3e-a950-6b7fb03f1739',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f4d41618-c568-41a3-980d-74c0dd9b0e6e','bf55f3f1-3695-4c64-981a-91d424242dc3','aca4cefb-f0a7-4d5e-86f2-890b15af7fda',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('89ed105e-b583-4ef9-84c4-9d2d88cafe79','bf55f3f1-3695-4c64-981a-91d424242dc3','0a621540-e3c5-4f04-b6af-cf0276eb16e8',60.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8921d4be-78fc-4f9d-9b44-1e040a054ec4','bf55f3f1-3695-4c64-981a-91d424242dc3','692938d0-e603-4d02-b905-21b2a85d2ff5',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('602fa039-5911-4a5d-9efc-8c0cd6831661','bf55f3f1-3695-4c64-981a-91d424242dc3','6d627c8d-bee4-435b-9a5c-e897ed94646e',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b385f8c6-489f-4417-90ae-c7323327bfb0','bf55f3f1-3695-4c64-981a-91d424242dc3','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('721bc9e4-7ce5-4a49-a5eb-4849b14ef613','bf55f3f1-3695-4c64-981a-91d424242dc3','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('bb78123a-696a-4c60-96b6-2346cefc653a','bf55f3f1-3695-4c64-981a-91d424242dc3','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2b173042-c110-44dc-8fc3-1a2373c1d019','92df7117-d1fa-420a-9771-6d7f54fe5d33','bf55f3f1-3695-4c64-981a-91d424242dc3',286.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cb5258f8-9328-4632-ad18-f02812a6b01f','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','bf55f3f1-3695-4c64-981a-91d424242dc3',366.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('75be80f5-06c3-4d48-9d4c-8de9591ba9f8','71c34c3c-18da-4745-8b7d-4774800170ec','bf55f3f1-3695-4c64-981a-91d424242dc3',23.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('71d9592c-0784-4aba-a7c7-5cefdcd07095','52c2699b-b628-4499-83d4-d478f7f9c902','bf55f3f1-3695-4c64-981a-91d424242dc3',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('031b2643-df7b-4d04-a016-4317b3c68eff','6631457d-6680-4faa-aa2b-1e7e21d12bd4','bf55f3f1-3695-4c64-981a-91d424242dc3',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('efdc01e1-38c1-41c3-a730-6b01754b7b6a','73bba7e2-640f-48da-b681-64d79c2ae9e0','bf55f3f1-3695-4c64-981a-91d424242dc3',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2a6c713c-d67f-45d2-961e-efdc2f338579','998ed6be-f894-4d11-bde8-22e46900a926','bf55f3f1-3695-4c64-981a-91d424242dc3',33.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e380ef0a-7196-42d3-836d-379bb8a15e8c','1d67d321-d82e-415e-8297-b24427aa46ae','bf55f3f1-3695-4c64-981a-91d424242dc3',108.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('960208b0-208f-43e2-93af-eee3531c55e9','8239b53c-b2c4-480d-a8fa-2f4660c678be','bf55f3f1-3695-4c64-981a-91d424242dc3',449.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','bf55f3f1-3695-4c64-981a-91d424242dc3');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('9605da15-5504-4397-998e-8e02f5fb0fe9',N'Cá tuyết với cơm súp lơ',N'Công thức chế biến món cá tốt cho sức khỏe này được kết hợp nhanh chóng chỉ với ba nguyên liệu mà bạn luôn có sẵn trong tủ đông và tủ lạnh.',20,1,'https://www.eatingwell.com/thmb/EpqpXq3kVcP6bhFKWyyEoiU4n4E=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5342885-50bbf05cf7a6434287a40725da37e837.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e4c828c2-a4a9-4901-95da-8238fa2c6678',1,N'Làm nóng trước lò nướng ở nhiệt độ cao','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7b9d0e18-1540-4c55-8905-e815a52ffd45',2,N'Rắc cá tuyết với 0.125 muỗng cà phê tiêu; sắp xếp trên giá trên chảo đã chuẩn bị.','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6724a0c0-5022-4de8-9eef-53ee4a252e03',3,N'Kết hợp 1 muỗng canh dầu, 0.125 muỗng cà phê muối và 0.125 muỗng cà phê tiêu trong một bát nhỏ.','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cf70c615-2635-411a-be3d-7bf4f3c47130',4,N'Phết 2 muỗng canh nước sốt lên miếng phi lê (để dành phần nước sốt còn lại để phục vụ).','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0138da3c-f85f-4da9-9a1b-c60d4a03c50b',5,N'Nướng cá cho đến khi cá bong ra bằng nĩa 4 đến 8 phút (tùy thuộc vào độ dày của miếng phi lê).','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('865a38a3-d2e2-4d9e-86ee-c4801d6bc698',6,N'Nấu cơm súp lơ trong lò vi sóng','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('63268f5f-2569-4b15-b6ea-fabfe1760c24',7,N'Khuấy 1 muỗng canh dầu còn lại, 0.125 muỗng cà phê muối và một chút tiêu.','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3010407e-a4be-4941-8603-87a05e126218',8,N'Chia cơm súp lơ thành 4 đĩa, cho cá lên trên và dùng với nước sốt dành riêng.','','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('51674251-90df-41c3-9165-9f31f639e705','9605da15-5504-4397-998e-8e02f5fb0fe9','3193e40f-787e-4ba4-8df8-e0f1ac7c1408',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('37b7ec0b-7e14-49b8-b3cc-5374fba9c419','9605da15-5504-4397-998e-8e02f5fb0fe9','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1ab3750f-568a-40cd-a17f-504f9b982652','9605da15-5504-4397-998e-8e02f5fb0fe9','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fbb77502-ce26-4998-95d8-43844c102d91','9605da15-5504-4397-998e-8e02f5fb0fe9','e41475bc-ef90-4ac7-95d0-017c9da58216',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('20ce2b2c-5922-4b96-830a-015da36700af','9605da15-5504-4397-998e-8e02f5fb0fe9','14094c14-951b-4d84-9d23-d9c81db2a9eb',400.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('326618b1-a091-4d22-86e4-ebba42655318','92df7117-d1fa-420a-9771-6d7f54fe5d33','9605da15-5504-4397-998e-8e02f5fb0fe9',179.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('018e0cde-e445-445a-8096-710f942892dc','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','9605da15-5504-4397-998e-8e02f5fb0fe9',232.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1691ee0e-8c8c-4fef-9478-9d476d328599','71c34c3c-18da-4745-8b7d-4774800170ec','9605da15-5504-4397-998e-8e02f5fb0fe9',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7c1d384b-91f9-493f-b145-3287d90fb5ab','52c2699b-b628-4499-83d4-d478f7f9c902','9605da15-5504-4397-998e-8e02f5fb0fe9',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5e405efb-42f6-4f9b-8043-760607540f43','6631457d-6680-4faa-aa2b-1e7e21d12bd4','9605da15-5504-4397-998e-8e02f5fb0fe9',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('720df4ee-6be4-457b-8030-2c5a10ebacbb','73bba7e2-640f-48da-b681-64d79c2ae9e0','9605da15-5504-4397-998e-8e02f5fb0fe9',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('766006a4-67a0-4a28-805a-825b13ab302d','998ed6be-f894-4d11-bde8-22e46900a926','9605da15-5504-4397-998e-8e02f5fb0fe9',25.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('cbd20393-b917-410b-9873-4690885e64f8','1d67d321-d82e-415e-8297-b24427aa46ae','9605da15-5504-4397-998e-8e02f5fb0fe9',67.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3820099c-b983-40e1-ade8-3b0a64db8e6a','8239b53c-b2c4-480d-a8fa-2f4660c678be','9605da15-5504-4397-998e-8e02f5fb0fe9',645.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','9605da15-5504-4397-998e-8e02f5fb0fe9');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('d62045db-9c8d-4716-afeb-daa2f61ad196',N'Gà nướng mật ong',N'Phục vụ những miếng thịt gà mềm này trên cơm gạo lứt với một bên bông cải xanh, hoặc dùng để phủ lên món salad hoặc bát ngũ cốc để tạo nên một bữa tối không thể nào quên!',15,1,'https://www.eatingwell.com/thmb/ZwTOaA7TN6upuWryrF1UXPmE5ig=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-tenderloins170-1-a46fb8e6c6d34665a614d60d287cfabf.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e14cf394-5085-4d59-aa48-8f1c73bbf993',1,N'Khuấy bột ngô, tỏi, hành, muối và hạt tiêu với nhau trong một bát vừa.','','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ce53594a-78d5-48da-bcbc-c5662fad9642',2,N'Thêm thịt gà','','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ca21d164-4e18-4151-8502-cd80598f64d8',3,N'Khuấy nước tương, mật ong, tỏi, sốt ớt-tỏi và giấm với nhau trong một bát nhỏ; để qua một bên.','','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('45f56824-c9d1-493f-b38b-7df9f3673bc6',4,N'Đun nóng dầu','','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b5b7e8dd-4339-4668-bfed-370aa4928cb3',5,N'Thêm gà; nấu, lật một lần, cho đến khi gà chín vàng và giòn với nhiệt độ 200 độ C từ 10 đến 12 phút','','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2f44957e-5055-4957-bec8-65c31bc10673',6,N'Thêm nước sốt vào chảo nấu trên lửa vừa và thấp cho đến khi nước sốt hơi đặc lại, khoảng 30 giây.','','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('40b770b2-ba31-471f-96a6-1701a9b4852d',7,N'Lấy gà ra khỏi chảo; rưới lên với nước sốt còn lại. Trang trí với hành lá, nếu muốn','','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e706b8ef-370f-4e82-b8b7-a23ed972af6a','d62045db-9c8d-4716-afeb-daa2f61ad196','0ce6b220-8612-44b6-9f64-7456fd2db886',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('06a4f686-0215-4e2d-b1ae-f96280042304','d62045db-9c8d-4716-afeb-daa2f61ad196','d938f228-5967-4e19-b432-34cf16837fb4',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('43840f25-04bc-44b1-a4bf-35fa21eeca0f','d62045db-9c8d-4716-afeb-daa2f61ad196','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f4df1e0c-3cc9-4eb4-9891-8c751ea9e912','d62045db-9c8d-4716-afeb-daa2f61ad196','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('25175487-e65b-44b2-94eb-6c1be15e5648','d62045db-9c8d-4716-afeb-daa2f61ad196','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6073b19c-41fe-4552-9f42-463815e72be0','d62045db-9c8d-4716-afeb-daa2f61ad196','6d627c8d-bee4-435b-9a5c-e897ed94646e',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e7ab2eaf-bd1e-48c3-a8ac-74211552835e','d62045db-9c8d-4716-afeb-daa2f61ad196','27f481eb-7a2c-4fcd-8ede-4847e6df6f7b',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('88ceb25d-aba3-4c41-ae00-f67bed04adaf','d62045db-9c8d-4716-afeb-daa2f61ad196','5910feab-2f62-4229-bb39-29e3aa451a96',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('29b3360a-074a-49ca-9ac7-fffc1e21594b','d62045db-9c8d-4716-afeb-daa2f61ad196','c632668a-22d3-4a2d-8830-bbbeb8e0aa04',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('96638bc9-0217-4cbe-8762-e41bad5cedf9','d62045db-9c8d-4716-afeb-daa2f61ad196','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c072d226-8d31-465b-8766-1e4efeed61ed','92df7117-d1fa-420a-9771-6d7f54fe5d33','d62045db-9c8d-4716-afeb-daa2f61ad196',146.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a47837e6-a6db-414d-8c67-b9e00277cae4','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','d62045db-9c8d-4716-afeb-daa2f61ad196',183.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3bdb1f18-93e6-40b1-9487-25d55141e6bd','71c34c3c-18da-4745-8b7d-4774800170ec','d62045db-9c8d-4716-afeb-daa2f61ad196',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b5af7779-9caa-4e62-b0fd-e5930e8687c4','52c2699b-b628-4499-83d4-d478f7f9c902','d62045db-9c8d-4716-afeb-daa2f61ad196',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4765dc57-00ad-4283-84ca-ce97402cd5db','6631457d-6680-4faa-aa2b-1e7e21d12bd4','d62045db-9c8d-4716-afeb-daa2f61ad196',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('69e43f05-b423-4b6c-9311-4a33e3faea04','73bba7e2-640f-48da-b681-64d79c2ae9e0','d62045db-9c8d-4716-afeb-daa2f61ad196',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6d495763-10c9-4037-86b2-9bbf9f1ced4e','998ed6be-f894-4d11-bde8-22e46900a926','d62045db-9c8d-4716-afeb-daa2f61ad196',27.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c2a739d9-37a0-4ee4-8393-d49309f81b5f','1d67d321-d82e-415e-8297-b24427aa46ae','d62045db-9c8d-4716-afeb-daa2f61ad196',65.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e1db06ad-4aed-4351-a9ac-d15a98c2f97b','8239b53c-b2c4-480d-a8fa-2f4660c678be','d62045db-9c8d-4716-afeb-daa2f61ad196',478.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','d62045db-9c8d-4716-afeb-daa2f61ad196');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('a253902e-cb3f-4e33-b360-3bfb6f644535',N'Cá hồi áp chảo ăn kèm khoai tây',N'Những buổi tối trong tuần bận rộn hãy thử chế biến một món gì đó đơn giản như bữa tối với cá hồi áp chảo này.',25,4,'https://www.eatingwell.com/thmb/8JBZBiBGyXWtdXSNBcss6qvlMBA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7748790-bbce67e5351e48118410285b23d2019f.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('593cded7-bedc-4fc1-a87d-44a7105dbfbb',1,N'Làm nóng lò nướng ở nhiệt độ 200 độ C','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d148f078-02af-4bbd-8001-b050e879f36e',2,N'Cho khoai tây, 1 muỗng canh dầu olive, 0.25 muỗng cà phê muối và hạt tiêu vào một bát vừa.','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1c359c58-40ca-4f56-9435-b9df0b27a35e',3,N'Chuyển sang chảo đã chuẩn bị và nướng trong 15 phút.','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('37178564-8111-4adf-8bfa-b141aeb740e8',4,N'Kết hợp ớt, thì là, tỏi, vỏ chanh và 0.5 muỗng cà phê muối còn lại trong một bát nhỏ.','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d20b071d-6ade-43e4-ad3f-65273e8723ed',5,N'Cho ớt chuông vào bát vừa và thêm 1 thìa dầu còn lại và 0.5 thìa hỗn hợp gia vị','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d1ac9ac9-4834-4c37-ba9c-06096ebb72f3',6,N'Phủ cá hồi với hỗn hợp gia vị còn lại.','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f013807b-4140-424a-943b-092e912af6cb',7,N'Sau 15 phút, lấy chảo ra khỏi lò. Thêm ớt và khuấy để kết hợp. Nướng trong 5 phút.','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('8b17075e-ef1a-4097-a42c-2dbb490a4462',8,N'Lấy ra khỏi lò; di chuyển một số loại rau và thêm cá hồi vào chảo.','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d5a52afa-aaae-461a-924f-dd1ee565d5be',9,N'Nướng cho đến khi cá hồi vừa chín tới, từ 6 đến 8 phút. Ăn kèm với chanh.','','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('eee58f0c-f190-4579-9a7f-0723006d8bc6','a253902e-cb3f-4e33-b360-3bfb6f644535','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('20dff4ac-3386-465c-93f7-195c4ff4dee3','a253902e-cb3f-4e33-b360-3bfb6f644535','80c9697d-769d-4bdc-84e7-f2f808808828',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('427ae397-981a-4135-b89e-3c7e2eeff238','a253902e-cb3f-4e33-b360-3bfb6f644535','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1eee3d39-98d0-4bff-93a3-cfdcc31d4a02','a253902e-cb3f-4e33-b360-3bfb6f644535','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2645a26d-a213-4667-aaca-0dc8206db791','a253902e-cb3f-4e33-b360-3bfb6f644535','35141130-f290-471b-aeb8-20d3c0e529ae',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dd42cca1-e7c5-4002-a228-4f08fb38140b','a253902e-cb3f-4e33-b360-3bfb6f644535','d938f228-5967-4e19-b432-34cf16837fb4',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7c084c8f-dea9-4dbc-9def-2dae7cb401a1','a253902e-cb3f-4e33-b360-3bfb6f644535','3f2bdf45-02f5-456d-a5b0-d7792645b980',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6c760daa-fb7b-44fd-a190-898faf1bf804','a253902e-cb3f-4e33-b360-3bfb6f644535','ee8e4240-af95-4310-be13-f5daf58691f9',570.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9de97ef4-cb05-496d-a3ed-cbc288ebade4','92df7117-d1fa-420a-9771-6d7f54fe5d33','a253902e-cb3f-4e33-b360-3bfb6f644535',347.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('03cb0da2-ef48-4360-928f-e166fa045942','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','a253902e-cb3f-4e33-b360-3bfb6f644535',405.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6ebe3902-aeae-4dc4-bebd-c9becd13bcaa','71c34c3c-18da-4745-8b7d-4774800170ec','a253902e-cb3f-4e33-b360-3bfb6f644535',17.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5dc417b4-8e1c-4bdd-8acd-4c07c2bcefaa','52c2699b-b628-4499-83d4-d478f7f9c902','a253902e-cb3f-4e33-b360-3bfb6f644535',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4f216a9e-947c-44dc-a1af-1b367ed1f3af','6631457d-6680-4faa-aa2b-1e7e21d12bd4','a253902e-cb3f-4e33-b360-3bfb6f644535',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d97b4a61-7c4e-454e-a250-b8a0f753039c','73bba7e2-640f-48da-b681-64d79c2ae9e0','a253902e-cb3f-4e33-b360-3bfb6f644535',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2a4e799e-5d45-46e6-9dd2-0aa57e3a80e7','998ed6be-f894-4d11-bde8-22e46900a926','a253902e-cb3f-4e33-b360-3bfb6f644535',35.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('09d25b89-d456-4598-9fd0-a7cc328762fd','1d67d321-d82e-415e-8297-b24427aa46ae','a253902e-cb3f-4e33-b360-3bfb6f644535',90.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d6bde8e2-b16d-4b89-89ea-550d0ddf5937','8239b53c-b2c4-480d-a8fa-2f4660c678be','a253902e-cb3f-4e33-b360-3bfb6f644535',517.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','a253902e-cb3f-4e33-b360-3bfb6f644535');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('37a5f1ad-d780-46e4-b45b-ebed55ced771',N'Mì xào tôm',N'Công thức 20 phút này là công thức bạn sẽ muốn thử. Việcã kết hợp tôm với rau tươi và nước sốt thơm ngon tự làm và dùng kèm với mì đậu phụ.',20,2,'https://www.eatingwell.com/thmb/G4_yTAzZW0IipUtZ1ylT7YuA9TU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/6127317-4800d6b6f9004c21991ccc3a05026684.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('db4e497d-edc4-447e-8f24-204d8e3286d7',1,N'Lột vỏ và bỏ chỉ tôm, để nguyên đuôi nếu muốn. Rửa sạch tôm','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('98a0b74b-0e83-44e7-8db9-39bd3ae74d29',2,N'Lau khô với khăn giấy. Để qua một bên.','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('edc897c8-ce7c-4800-ada2-3016b769f052',3,N'Trộn đều nước, nước sốt, nước tương trong một cái bát nhỏ; để qua một bên.','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('51c9d99b-6f65-4557-b3cd-94c86a48ea74',4,N'Đun nóng 1 muỗng canh dầu ô liu trong chảo','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f7577075-516f-4de7-9bb0-8224627987ea',5,N'Cho tôm, tỏi và gừng vào dầu nóng. Xào khoảng 2 phút hoặc cho đến khi tôm có màu đục.','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9fcd9a5b-b94b-48c6-b251-969a52ec2066',6,N'Lấy tôm ra khỏi chảo; để qua một bên.','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('936fe336-4e76-4536-9b87-5e0f3c3c3867',7,N'Đun nóng 1 muỗng canh dầu ô liu còn lại trong chảo.','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f66a41bc-f643-477c-ad5a-4f860b0d00c1',8,N'Thêm hỗn hợp rau vào dầu nóng; xào từ 3 đến 4 phút hoặc cho đến khi mềm giòn.','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('12103e54-9e34-4b7c-8144-c5f254783814',9,N'Cho tôm trở lại chảo; xào với nhau cho đến khi nóng qua.','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0c25b044-1fa4-468e-8494-da2cbd3125e5',10,N'Chia cho bốn bát. Nếu muốn, rắc hành lá thái lát. Rưới với dầu mè. Phục vụ ngay lập tức','','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e2d9e30a-2431-413c-8952-9e361765b96d','37a5f1ad-d780-46e4-b45b-ebed55ced771','469dd1e0-f903-4b82-ad7d-b1c8392f2d5b',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c0ee76ca-78b9-4ab3-bdea-f0aed3c1b9ba','37a5f1ad-d780-46e4-b45b-ebed55ced771','9eab6829-cd60-4ab5-b47c-0b0c8737fa51',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a59dab5b-0d74-4b18-b1c3-5d4df97a1a3e','37a5f1ad-d780-46e4-b45b-ebed55ced771','2b625f42-fd18-4fbf-8816-2821d19f8e16',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('911a0ce5-e1f1-47e8-860a-350c9f57407f','37a5f1ad-d780-46e4-b45b-ebed55ced771','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9c18d9d5-d73d-4d76-9541-4e5afa315bd2','37a5f1ad-d780-46e4-b45b-ebed55ced771','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('692aa030-77a5-4bf4-87dd-6b1e3bb80a9f','37a5f1ad-d780-46e4-b45b-ebed55ced771','a6d4322e-e06a-4edb-ac87-91a4eebac40b',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9f53d5f6-5470-4142-b3a8-1a9fbcc6b794','37a5f1ad-d780-46e4-b45b-ebed55ced771','b8060da2-174a-4e55-a8f7-acf1c7c89045',220.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9e738384-7fd3-413b-90eb-945a034f58e9','37a5f1ad-d780-46e4-b45b-ebed55ced771','8ed8864e-1f5f-4593-ac9f-170cdde3477b',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('b1acfa0f-c95d-4c21-9f89-1b1aea33aac2','92df7117-d1fa-420a-9771-6d7f54fe5d33','37a5f1ad-d780-46e4-b45b-ebed55ced771',189.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f6bb1934-acfb-4371-8139-bf6c5b531343','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','37a5f1ad-d780-46e4-b45b-ebed55ced771',246.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('45b69b82-7281-4ef5-92ea-05baa1b68466','71c34c3c-18da-4745-8b7d-4774800170ec','37a5f1ad-d780-46e4-b45b-ebed55ced771',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e038f21f-4438-43e5-a3ad-fbeb63df9057','52c2699b-b628-4499-83d4-d478f7f9c902','37a5f1ad-d780-46e4-b45b-ebed55ced771',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4e2bf5f9-32ce-4aab-b16e-f3950297822e','6631457d-6680-4faa-aa2b-1e7e21d12bd4','37a5f1ad-d780-46e4-b45b-ebed55ced771',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4feb8b54-538f-4a6f-aa91-11d38b1af9e7','73bba7e2-640f-48da-b681-64d79c2ae9e0','37a5f1ad-d780-46e4-b45b-ebed55ced771',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a799b19b-ca90-4644-bd06-7428bab331fe','998ed6be-f894-4d11-bde8-22e46900a926','37a5f1ad-d780-46e4-b45b-ebed55ced771',22.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ff973522-3bc2-4827-857d-0e46ed0d735f','1d67d321-d82e-415e-8297-b24427aa46ae','37a5f1ad-d780-46e4-b45b-ebed55ced771',130.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('97aa1db3-27a3-40ab-9b67-2bcc1cf6244a','8239b53c-b2c4-480d-a8fa-2f4660c678be','37a5f1ad-d780-46e4-b45b-ebed55ced771',631.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('18ce6030-7cf5-48cb-b6d2-ffe822666225','37a5f1ad-d780-46e4-b45b-ebed55ced771');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('2b17e5b0-7016-4a91-a31c-c44869b46592',N'Gà hầm',N'Đùi gà có thể nấu nhiều mà không bị dai hoặc khô, điều này khiến chúng trở nên hoàn hảo cho món gà hầm phục vụ vào bữa tối.',180,3,'https://www.eatingwell.com/thmb/eP2ZzaK7BK6eg7HKB5Sjud-SUHQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3757921-724af787f1734f4d8897490809d56f6b.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7ab58f1c-6d42-46b6-9f61-17725b07c78b',1,N'Kết hợp 6 muỗng canh bột mì với 0.5 muỗng cà phê muối và hạt tiêu trong một cái bát nông. Nhúng đùi gà vào hỗn hợp để phủ hoàn toàn; chuyển sang đĩa.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('46c95034-9b9f-457e-b101-7c2c99785afb',2,N'Đun nóng 2 muỗng cà phê dầu trong chảo lớn trên lửa vừa','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2cce3ea9-ccad-47b4-b888-d338e7b0e7f3',3,N'Thêm một nửa con gà và nấu cho đến khi chín vàng đều, từ 2 đến 4 phút mỗi bên rồi chuyển qua nồi hầm','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('43a7053e-0d61-45f7-99fd-1f54b391d35e',4,N'Giảm nhiệt xuống mức trung bình và lặp lại với 2 muỗng cà phê dầu và đùi gà còn lại.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3d58aedd-a629-4c40-9b7a-9fac3a4f1873',5,N'Xếp gà thành một lớp đều trong nồi hầm.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('60ceeeea-e860-4f04-8256-716788fff153',6,N'Thêm thịt xông khói vào chảo và nấu, khuấy thường xuyên trong 2 phút.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7e24a048-310c-44a5-bb31-4eddde595098',7,N'Rắc 0.5 chén bột còn lại lên thịt xông khói và nấu, khuấy liên tục trong 2 phút nữa.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d25d5077-e901-4c77-ada2-f2be36a9f47e',8,N'Thêm bia','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ed98ca3a-7287-4cc8-8f9b-38e42542819f',9,N'Đậy nắp và nấu cho đến khi gà chín mềm, 4 giờ ở chế độ Cao hoặc 7 đến 8 giờ ở chế độ Thấp.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d5222475-6006-43ee-96e7-0cd5818fcc28',10,N'Đậy nắp và nấu cho đến khi gà chín mềm, 4 giờ ở chế độ Cao hoặc 7 đến 8 giờ ở chế độ Thấp.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('479951b1-50e3-4964-82ce-de33a1fb962c',11,N'Cho đậu Hà Lan vào khuấy đều, đậy nắp và nấu cho đến khi đậu nóng lên, thêm 5 đến 10 phút nữa. Nêm 0.5 muỗng cà phê muối và hạt tiêu còn lại.','','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c1d45bd6-961a-4278-860a-9e7eba2bd30d','2b17e5b0-7016-4a91-a31c-c44869b46592','7d3a888d-541d-4569-9816-dea520471bf4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a8c09dd3-7ba6-40d8-9e2d-a3bb13730a4a','2b17e5b0-7016-4a91-a31c-c44869b46592','e41475bc-ef90-4ac7-95d0-017c9da58216',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('24993bb8-1955-40f3-bb1c-d280d6782a09','2b17e5b0-7016-4a91-a31c-c44869b46592','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5bcb10bc-6bf4-45a3-a141-22bc5e4635bb','2b17e5b0-7016-4a91-a31c-c44869b46592','6d627c8d-bee4-435b-9a5c-e897ed94646e',900.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f50ed9f7-be26-4a40-b096-1c8f016cb41b','2b17e5b0-7016-4a91-a31c-c44869b46592','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4c1b4c20-f535-4b45-8d46-09a6b6a6c95d','2b17e5b0-7016-4a91-a31c-c44869b46592','705949d3-cee4-4db9-80bd-805093040b66',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0cd9e441-3745-415e-9e99-426fb23122d8','2b17e5b0-7016-4a91-a31c-c44869b46592','9d660fbe-8b2e-49bc-b696-c554a9371e20',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c7abecce-0742-4519-bb54-35cf116f847f','2b17e5b0-7016-4a91-a31c-c44869b46592','169e7e6a-2518-47a5-b7bf-c6d76ef16079',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6896d052-9c69-437c-ad59-07a2e0209b58','2b17e5b0-7016-4a91-a31c-c44869b46592','88d4fd3d-ce2d-438a-ba72-9cab5ae1c7a7',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9bf724f1-34c3-4d20-9b56-64aac47d7430','2b17e5b0-7016-4a91-a31c-c44869b46592','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('86b238a5-2156-4abb-adf2-b3b84319fbac','2b17e5b0-7016-4a91-a31c-c44869b46592','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7faeca70-5847-4243-927d-e203a0cc435a','2b17e5b0-7016-4a91-a31c-c44869b46592','f627f161-878e-4578-9886-afe027c1fd12',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('1ec728ca-4bc6-4c81-a5be-c0bfa0a83aba','2b17e5b0-7016-4a91-a31c-c44869b46592','ef091dc1-3b6a-4a52-b93b-3a05bf37c241',400.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('be553009-f220-4632-8010-73fdd6ae5c9f','92df7117-d1fa-420a-9771-6d7f54fe5d33','2b17e5b0-7016-4a91-a31c-c44869b46592',278.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('214d2b76-f331-4c7f-9ca8-5ad8c9737c24','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','2b17e5b0-7016-4a91-a31c-c44869b46592',366.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dc0db2ad-c971-4e86-a9ea-ff69a0104599','71c34c3c-18da-4745-8b7d-4774800170ec','2b17e5b0-7016-4a91-a31c-c44869b46592',13.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('09448527-7b90-4f95-bd25-4dca58d13c0d','52c2699b-b628-4499-83d4-d478f7f9c902','2b17e5b0-7016-4a91-a31c-c44869b46592',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2983456f-4c5d-491b-9b37-55d9709da533','6631457d-6680-4faa-aa2b-1e7e21d12bd4','2b17e5b0-7016-4a91-a31c-c44869b46592',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('48e908d1-5c34-401e-a977-61f1a628d4ca','73bba7e2-640f-48da-b681-64d79c2ae9e0','2b17e5b0-7016-4a91-a31c-c44869b46592',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('86b971c8-86af-49da-b43e-ce323c07c0e7','998ed6be-f894-4d11-bde8-22e46900a926','2b17e5b0-7016-4a91-a31c-c44869b46592',30.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('22004713-77e8-48b5-8ddd-ab05bedb1874','1d67d321-d82e-415e-8297-b24427aa46ae','2b17e5b0-7016-4a91-a31c-c44869b46592',88.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9fbf6419-e1b7-4297-8391-af91bbbe1f0a','8239b53c-b2c4-480d-a8fa-2f4660c678be','2b17e5b0-7016-4a91-a31c-c44869b46592',552.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('1614e397-a414-4ff7-a9d1-15b35161828c','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','2b17e5b0-7016-4a91-a31c-c44869b46592');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('3cc000ca-c528-4c18-afa9-9846f3184417',N'Gà nướng que',N'Đây là một cách thú vị để phục vụ món gà rán bỏ lò cho một buổi dã ngoại: đặt nó vào một cái que. Thật tuyệt vời khi ăn kèm với hành tây tự làm và nước sốt mù tạt mật ong này, nhưng nó cũng tuyệt vời với nước sốt thịt nướng hoặc nước sốt nóng',150,1,'https://www.eatingwell.com/thmb/Rcg0iy2SIZ-Y0ze3RhTbIo1Kfg0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3748390-c47f5ade1f964988a8896f9e9bf12d70.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e3c498ad-0bb7-48fd-b928-ee776d605a90',1,N'Để làm gà: Trộn muối, 1 thìa cà phê ớt bột và 0.5 thìa cà phê bột hành và bột tỏi vào một bát lớn.','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('569c9e2c-5d2c-46eb-a1b1-5f702b4b6850',2,N'Thêm bơ sữa và đánh cho đến khi muối tan hoàn toàn và các loại gia vị được phân tán trong chất lỏng.','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2facb996-6dcf-42f7-abc4-57a295027327',3,N'Cắt gà theo chiều dọc thành dải rộng','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('27c15e88-c36d-4121-8eb3-d03ebb932095',4,N'Thêm vào nước xốt và để yên ở nhiệt độ phòng trong 30 phút. (Không ướp lâu hơn và không để tủ lạnh, nếu không gà sẽ bị mặn quá.)','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9b1703e4-f8f7-43f8-b485-c2f1695d1195',5,N'Kết hợp vụn bánh mì, 1 thìa cà phê ớt bột còn lại và 0.5 thìa cà phê mỗi loại bột hành và bột tỏi trong một đĩa','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('cab7712c-9146-403a-9c75-299877ba2e8d',6,N'Thêm 2 muỗng canh dầu','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c61501c8-0759-4c01-87cb-98f3237df0ce',7,N'Đánh bông lòng trắng trứng và mù tạt trong một đĩa nông lớn thứ hai. Nêm cả hai hỗn hợp với hạt tiêu.','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f4ce4694-09f0-4c8a-8dbb-52c4bfba4704',8,N'Làm nóng lò nướng ở nhiệt độ 200 độ C. Lót giấy bạc vào khay nướng','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('56e11003-3a33-4bdc-952b-ebee86099fe2',9,N'Lấy gà ra khỏi nước ướp, rũ bỏ phần thừa và xâu vào xiên tre','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('200a1ff6-070a-4c47-99d7-3c13eeef9226',10,N'Nhúng gà vào hỗn hợp trứng, phủ cả hai mặt. Lần lượt cho từng miếng bột vào hỗn hợp vụn bánh mì, rắc vụn bánh mì lên trên và ấn chặt để lớp phủ bám đều cả hai mặt.','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('320a3843-1423-4dcb-b625-2c842bde9cdf',11,N'Nhẹ nhàng rũ bỏ vụn thừa và đặt các xiên lên giá đã chuẩn bị sẵn.','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('54cfddb6-f82b-4436-93e5-54c830822f64',12,N'Nướng gà, quay nửa chừng, cho đến khi vàng nâu và nước chảy ra trong, khoảng 25 phút.','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('da73790f-66df-41d9-a996-423477fecd4a',13,N'Phục vụ gà với nước chấm.','','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f8be47fb-43a6-40c0-b01e-b0340b5acf6f','3cc000ca-c528-4c18-afa9-9846f3184417','e41475bc-ef90-4ac7-95d0-017c9da58216',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2bf2bc37-03c1-4f5c-9412-0ab9a20d86bb','3cc000ca-c528-4c18-afa9-9846f3184417','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a972ddd5-57ca-44cf-8d26-e7d83f0e9d9c','3cc000ca-c528-4c18-afa9-9846f3184417','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('c2ae9ad6-1d94-4446-8c82-ccafd0ec8973','3cc000ca-c528-4c18-afa9-9846f3184417','5e5a7922-33dd-41ba-8887-ed05f71ece4b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e92bd06b-9d89-49f3-baa6-e3f59607954e','3cc000ca-c528-4c18-afa9-9846f3184417','6d627c8d-bee4-435b-9a5c-e897ed94646e',800.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e3e6d8bc-9c45-49b3-965e-6b211d84a96a','3cc000ca-c528-4c18-afa9-9846f3184417','a34c0eec-5b1f-41fd-93d1-ed10ad524a30',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9cb85c85-2b6f-478c-848e-ae2d1cb76ede','3cc000ca-c528-4c18-afa9-9846f3184417','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0ecc5f19-5017-47b2-a41b-49f19b818a11','3cc000ca-c528-4c18-afa9-9846f3184417','d2985015-ad21-4c3a-8f22-608be39f47c0',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b946cc9f-ff10-4485-9eae-325a73c17fb5','3cc000ca-c528-4c18-afa9-9846f3184417','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('356f2847-42b9-4a07-bfe1-70c8d4906771','92df7117-d1fa-420a-9771-6d7f54fe5d33','3cc000ca-c528-4c18-afa9-9846f3184417',298.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a971568b-2866-488c-a366-6d764df49dcc','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','3cc000ca-c528-4c18-afa9-9846f3184417',351.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a5defb19-02ea-4776-9762-5e34dbf1ebb4','71c34c3c-18da-4745-8b7d-4774800170ec','3cc000ca-c528-4c18-afa9-9846f3184417',18.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('23c3e80e-5430-4d82-b11c-cf31d42ad530','52c2699b-b628-4499-83d4-d478f7f9c902','3cc000ca-c528-4c18-afa9-9846f3184417',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('60b4ee91-9e80-499e-a875-4e6580ee2cf7','6631457d-6680-4faa-aa2b-1e7e21d12bd4','3cc000ca-c528-4c18-afa9-9846f3184417',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f8bad423-0423-45dd-adca-70215121d3e3','73bba7e2-640f-48da-b681-64d79c2ae9e0','3cc000ca-c528-4c18-afa9-9846f3184417',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('7092d8c7-8f1e-4cea-bf7a-2e3ff505d72f','998ed6be-f894-4d11-bde8-22e46900a926','3cc000ca-c528-4c18-afa9-9846f3184417',28.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('0c1924ff-b8b7-4d1c-823f-c296ed8707b0','1d67d321-d82e-415e-8297-b24427aa46ae','3cc000ca-c528-4c18-afa9-9846f3184417',63.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('4d980209-213d-4969-b7ba-e352d834be67','8239b53c-b2c4-480d-a8fa-2f4660c678be','3cc000ca-c528-4c18-afa9-9846f3184417',314.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','3cc000ca-c528-4c18-afa9-9846f3184417');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('be5fd488-4ca7-4729-b941-47cf0a320672',N'Thịt gà BBQ',N'Những miếng ức gà không xương, không da này vẫn giữ được độ giòn chỉ với một lớp dầu mỏng. Phục vụ như một món khai vị hoặc thử chúng cho bữa tối với rau giòn và nhúng bên cạnh.',90,2,'https://www.eatingwell.com/thmb/UJGfgfSoQI5LxVOXRNkb0t5q2RA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/4463716-14948bdf130e436f937dc0e03a8009f0.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('63318995-0389-4cae-8e9c-08690cc96eca',1,N'Kết hợp nước sốt thịt nướng, mù tạt và mật ong trong một bát lớn. Đặt 0.5 chén nước sốt vào một cái bát nhỏ.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a10b4bee-a5a5-494f-92fe-5e90aab92872',2,N'Cắt đôi phần thịt gà lớn theo chiều dọc, sau đó cho tất cả phần thịt mềm vào bát lớn với phần nước sốt còn lại; khuấy đều.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('764ecd41-dda5-4285-9a6d-a67b6e486112',3,N'Ướp trong tủ lạnh từ 30 phút đến 1 tiếng.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bdb76f8d-2046-45c2-ad80-5fd5673359cc',4,N'Làm nóng lò nướng ở nhiệt độ 225 độ C','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2c60d570-279c-4a35-bd16-8c0aa2d11159',5,N'Kết hợp bột mì, muối và hạt tiêu trong một đĩa','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('87a7a667-d6ea-40c1-b5ff-edf0ffd00e32',6,N'Đập nhẹ trứng vào một đĩa nông khác','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c98c3bd0-9804-43d5-bd30-d8c0de9fec02',7,N'Đặt vụn bánh mì vào đĩa thứ ba.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('39ef7ef0-bd58-4ab6-b8ed-d2daeff1d723',8,N'Lăn từng miếng gà trong bột mì, rũ bỏ mọi phần thừa.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b74c4b11-d2f1-45a0-baa9-f0f67e3557a4',9,N'Nhúng vào trứng, Sau đó lăn qua vụn bánh mì, rũ bỏ phần thừa.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('534eedee-7db3-42cc-aa1a-46922d33ab91',10,N'ặt miếng gà trên tấm nướng đã chuẩn bị','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a9394b3b-1b22-47df-8a6f-91cd59eb697e',11,N'Nướng trong 10 phút. Lật từng miếng gà và tiếp tục nướng cho đến khi bên ngoài giòn và các miếng mềm chín đều, khoảng 10 phút nữa.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bf24e36f-f487-493a-b0f9-21bc510be93e',12,N'Ăn kèm với nước sốt dành riêng để chấm.','','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4498dffd-16b8-4ccc-944d-ab4586cd8d82','be5fd488-4ca7-4729-b941-47cf0a320672','5910feab-2f62-4229-bb39-29e3aa451a96',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('68a9846c-cf48-49cd-933d-55d17e5e8783','be5fd488-4ca7-4729-b941-47cf0a320672','6d627c8d-bee4-435b-9a5c-e897ed94646e',700.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f4bacac6-e09d-4ff0-8005-fbe4fbfd4ba8','be5fd488-4ca7-4729-b941-47cf0a320672','75796448-6575-442b-aa95-00b060ce70db',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('597df6d8-2611-4068-8df8-3d4405b42985','be5fd488-4ca7-4729-b941-47cf0a320672','e41475bc-ef90-4ac7-95d0-017c9da58216',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('5ae68040-d97b-4eb9-a187-b954dc6cab7c','be5fd488-4ca7-4729-b941-47cf0a320672','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('fd2f7d9b-e141-4579-88e2-4390152aed7d','be5fd488-4ca7-4729-b941-47cf0a320672','d2985015-ad21-4c3a-8f22-608be39f47c0',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f7d9b21e-253d-4a60-bcb9-8dbd81704db4','be5fd488-4ca7-4729-b941-47cf0a320672','a34c0eec-5b1f-41fd-93d1-ed10ad524a30',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e4477f98-06a7-4b4b-bbe4-461d4512b526','be5fd488-4ca7-4729-b941-47cf0a320672','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f22b0717-f96f-4194-ae97-e1dbaaee53ea','be5fd488-4ca7-4729-b941-47cf0a320672','2d679e49-a61a-4801-b500-2d438b441231',0.5,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8ed05665-0d32-455f-ba06-04b387999940','92df7117-d1fa-420a-9771-6d7f54fe5d33','be5fd488-4ca7-4729-b941-47cf0a320672',42.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5a7798d6-e21c-4866-99ac-0cc66d7d7e88','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','be5fd488-4ca7-4729-b941-47cf0a320672',69.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c2698d28-3741-4ddb-b496-128e1a4741f0','71c34c3c-18da-4745-8b7d-4774800170ec','be5fd488-4ca7-4729-b941-47cf0a320672',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('448e9b1f-ed13-4351-90cd-411712972414','52c2699b-b628-4499-83d4-d478f7f9c902','be5fd488-4ca7-4729-b941-47cf0a320672',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('db1a7599-b135-43de-b917-67b457be489e','6631457d-6680-4faa-aa2b-1e7e21d12bd4','be5fd488-4ca7-4729-b941-47cf0a320672',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('a6ce1e48-5696-4e01-97fb-b8e081d44819','73bba7e2-640f-48da-b681-64d79c2ae9e0','be5fd488-4ca7-4729-b941-47cf0a320672',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('eec45de4-2a51-432b-944d-296dd16b3509','998ed6be-f894-4d11-bde8-22e46900a926','be5fd488-4ca7-4729-b941-47cf0a320672',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('c4b318a8-e6e1-4e15-bf5e-ed7f1cbf1482','1d67d321-d82e-415e-8297-b24427aa46ae','be5fd488-4ca7-4729-b941-47cf0a320672',24.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e073db67-6989-473e-8300-9c798b14b549','8239b53c-b2c4-480d-a8fa-2f4660c678be','be5fd488-4ca7-4729-b941-47cf0a320672',146.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','be5fd488-4ca7-4729-b941-47cf0a320672');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('8f52efe1-d24c-458b-8fb8-6889ebcff2e6',N'Gà nướng kèm rau củ',N'Gà nướng trong 45 phút? Không có gì. Kỹ thuật bắt đầu ức gà rút xương trên bếp và hoàn thành chúng trong lò nướng nóng hổi với rau củ sẽ giúp bạn nhanh chóng có một bữa tối thịnh soạn trên bàn.',45,1,'https://www.eatingwell.com/thmb/1drDMlUQHJFb1qZdp-p2Kw7jjqM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3747845-7ee7098c31624d689bb8beb29abc01ad.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('75f41863-94ee-4b1c-92fe-e47e36da7573',1,N'Làm nóng lò ở 250 độ C','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('68b61713-7d9c-47a8-bf3b-6c819045cb18',2,N'Trải một lớp đều trên một tấm nướng lớn. Nướng trong 15 phút.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('07b13a0c-37de-4626-87b3-469f5a68566a',3,N'Trong khi đó, đặt bột vào một cái đĩa','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('dfa4fe88-f5fd-423f-9f58-81467984adf6',4,N'Chuyển 2 thìa cà phê bột mì vào bát nhỏ và cho nước dùng vào; để qua một bên.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a5cad5c9-0e47-4687-9086-9c95c5102244',5,N'Ướp gà với 0.25 thìa cà phê muối và 0.25 thìa cà phê tiêu còn lại. Nhúng gà vào bột mì, rũ bỏ phần thừa.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a525ac93-a257-46ef-8041-f2dfd0558d00',6,N'Đun nóng 1 muỗng canh dầu còn lại trong chảo lớn trên lửa vừa.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('9d087997-711d-42b5-bf48-429ffc56f753',7,N'Thêm thịt gà, mặt có da úp xuống và nấu cho đến khi mặt dưới chín vàng, khoảng 5 phút.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('06a8a443-c26a-4a83-9827-e3c7eced0850',8,N'Sau khi nướng rau trong 15 phút, đảo đều và đặt một miếng thịt gà, mặt có da lên trên, vào mỗi góc của khay nướng.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('15aff221-3ac9-4d15-9acd-b272af3ee01a',9,N'Cho rau và gà trở lại lò nướng và nướng cho đến khi gà chín và rau mềm, thêm khoảng 20 phút nữa.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d18622d2-810c-4c0a-b78d-8fa62e1c3b37',10,N'Khi thịt gà và rau còn khoảng 10 phút, đặt lại chảo ở lửa vừa. Thêm hẹ và nấu, khuấy, cho đến khi có mùi thơm, khoảng 1 phút.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('263bb36b-161d-4ad0-b242-4a32db2b0473',11,N'Đánh đều hỗn hợp nước dùng dành riêng một lần nữa, thêm vào chảo và đun sôi.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bac505f5-cdb1-4a9f-9a16-989ee4901867',12,N'Nấu, thỉnh thoảng khuấy, cho đến khi giảm khoảng một nửa, khoảng 8 phút.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ac5c284c-8e64-4786-9268-4aa37545c787',13,N'Khuấy mù tạt và giấm. Phục vụ gà và rau với nước sốt.','','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0d5eb90e-3f21-41c2-8146-4a6534af2a73','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','33c4bdb8-d33c-4f4b-ba9e-d1f2786e57e9',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('d8d226b7-9ed7-421e-9404-2be6939696b4','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('12b1025d-6de3-4ced-8e9f-03af44a4ec77','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('08a44d81-4a6f-4222-a846-9236adcb3573','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','2d679e49-a61a-4801-b500-2d438b441231',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('28d87a48-4885-47bf-b579-23d2013d7999','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','75796448-6575-442b-aa95-00b060ce70db',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4407e8a8-e821-44dd-ab8a-f7fbbbeaacc6','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','f627f161-878e-4578-9886-afe027c1fd12',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8bc6f5de-a5ae-4f2e-b697-0750073b2a73','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','6d627c8d-bee4-435b-9a5c-e897ed94646e',400.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('607d3662-52df-4389-8adb-deaa2b17c852','8f52efe1-d24c-458b-8fb8-6889ebcff2e6','47baae7e-cef8-40ea-b008-47e720533710',2.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ed714b6d-b555-44fe-82fa-45ab6aee23a9','92df7117-d1fa-420a-9771-6d7f54fe5d33','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',278.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2216b65a-b8cc-4f9c-9d05-4c965d98fc51','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',333.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2650bcd8-1a32-44eb-a288-4ea23dd08b14','71c34c3c-18da-4745-8b7d-4774800170ec','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',10.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('12b94ffa-9ff6-48a7-875a-ff2c32a9fdeb','52c2699b-b628-4499-83d4-d478f7f9c902','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('bf68d5a6-24bf-40a7-99f7-61d2b9062757','6631457d-6680-4faa-aa2b-1e7e21d12bd4','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',6.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8454db49-8fd1-4e7d-b6d6-fb311256115e','73bba7e2-640f-48da-b681-64d79c2ae9e0','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e00ac0a0-5ea0-4261-9a0d-f8e2149858c2','998ed6be-f894-4d11-bde8-22e46900a926','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',31.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('6face568-7bae-40a0-869c-6a78900c01c5','1d67d321-d82e-415e-8297-b24427aa46ae','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',72.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ddacf888-8127-4d58-ac25-3c35bd27d3be','8239b53c-b2c4-480d-a8fa-2f4660c678be','8f52efe1-d24c-458b-8fb8-6889ebcff2e6',784.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','8f52efe1-d24c-458b-8fb8-6889ebcff2e6');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('f01e73d7-238c-43ac-ae15-4e4aedac73ce',N'Gà xào đâu Hà Lan',N'Được rắc nhiều chanh, món gà xào ngon lành này có sự kết hợp đầy màu sắc của đậu Hà Lan, cà rốt và hành lá. Ăn kèm: Bún hoặc cơm gạo lứt.',40,1,'https://www.eatingwell.com/thmb/4vBBceg0Ism9SMSkrFmTaBhnQek=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3914990-236ce486f5ec41f4b0affbb99420623b.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ce6f131f-1930-4383-9a57-0a04108e4504',1,N'Bào 1 thìa cà phê vỏ chanh và để sang một bên.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3b572c50-4231-44e2-8322-b74942d9a2e4',2,N'Vắt chanh và đánh 3 muỗng canh nước cốt với nước dùng, nước tương và bột ngô trong một bát nhỏ.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bb2c95b6-e39b-47b0-ba81-337c09ba8ccf',3,N'Đun nóng dầu trong chảo lớn trên lửa vừa','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('a4b83f85-26cd-4344-9527-209e7c185614',4,N'hêm thịt gà và nấu, thỉnh thoảng khuấy, cho đến khi vừa chín tới, 4 đến 5 phút.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('07b5fbae-4fb7-42cb-9dac-116d3ff9718d',5,N'Thêm nấm và cà rốt vào chảo và nấu cho đến khi cà rốt vừa mềm, khoảng 5 phút.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('da720a3e-e0e8-43bf-bc5a-52460cac7cac',6,N'Thêm đậu Hà Lan, hành tây, tỏi và vỏ chanh dành riêng.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('1d3ba112-fc9b-4aac-80ad-b0b11bee7e08',7,N'Nấu, khuấy, cho đến khi có mùi thơm, 30 giây.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('38878e98-8180-4fdb-b3a9-bfe97e37f4b8',8,N'Đánh bông hỗn hợp nước dùng và cho vào chảo; nấu, khuấy, cho đến khi đặc lại, 2 đến 3 phút.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e0ee3a94-e6c1-49b3-96ad-be395a36ecd3',9,N'Thêm hành lá và thịt gà','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e77b44ad-f817-472c-a173-5f22cd92be0a',10,N'Nấu, khuấy, cho đến khi nóng qua, 1 đến 2 phút.','','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e23648c7-e5c0-414c-9e09-3ce7e9041678','f01e73d7-238c-43ac-ae15-4e4aedac73ce','c881b40b-6ed6-46a9-a1fd-e85dc95099d3',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0529cb31-3d90-4ab4-82c2-74d1e85bcd23','f01e73d7-238c-43ac-ae15-4e4aedac73ce','f627f161-878e-4578-9886-afe027c1fd12',0.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8342b5dc-3d2c-4f2a-bb1a-ddb2c8350195','f01e73d7-238c-43ac-ae15-4e4aedac73ce','2b625f42-fd18-4fbf-8816-2821d19f8e16',3.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('3f83d25b-50e8-4659-ad03-50f2beaee5cb','f01e73d7-238c-43ac-ae15-4e4aedac73ce','0ce6b220-8612-44b6-9f64-7456fd2db886',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('4eebbd8d-0eb9-44dd-af17-84765033d1af','f01e73d7-238c-43ac-ae15-4e4aedac73ce','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('b3569809-e0cf-470d-910a-038a91546866','f01e73d7-238c-43ac-ae15-4e4aedac73ce','6d627c8d-bee4-435b-9a5c-e897ed94646e',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('0470568e-e076-44ed-a503-a87cf6b28748','f01e73d7-238c-43ac-ae15-4e4aedac73ce','88d4fd3d-ce2d-438a-ba72-9cab5ae1c7a7',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f171884a-fd58-4cbd-8e0f-6ef81fa3b57f','f01e73d7-238c-43ac-ae15-4e4aedac73ce','169e7e6a-2518-47a5-b7bf-c6d76ef16079',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('2ee14d7f-c452-4982-b98b-3720355c222f','f01e73d7-238c-43ac-ae15-4e4aedac73ce','ef091dc1-3b6a-4a52-b93b-3a05bf37c241',200.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('99653811-9591-4339-aab8-1cce31a38670','f01e73d7-238c-43ac-ae15-4e4aedac73ce','acaf9c4e-bd3e-4e2f-bf58-a26becf37011',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('dbb6223b-371b-4c4a-88af-e709a7c9a0d2','f01e73d7-238c-43ac-ae15-4e4aedac73ce','d938f228-5967-4e19-b432-34cf16837fb4',1.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('dd7edc06-9e62-4d6f-bc8d-4aefe000d1ac','92df7117-d1fa-420a-9771-6d7f54fe5d33','f01e73d7-238c-43ac-ae15-4e4aedac73ce',197.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('22d2c16f-190e-4016-9078-d419a31eca9c','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','f01e73d7-238c-43ac-ae15-4e4aedac73ce',223.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('620e6ebd-add2-4d2d-b8ff-20a29fb0e7a9','71c34c3c-18da-4745-8b7d-4774800170ec','f01e73d7-238c-43ac-ae15-4e4aedac73ce',7.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('3d3bb083-d718-4e4b-854b-9961bbb369ae','52c2699b-b628-4499-83d4-d478f7f9c902','f01e73d7-238c-43ac-ae15-4e4aedac73ce',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d4e854d7-1e04-47e2-baf6-a2970f184e86','6631457d-6680-4faa-aa2b-1e7e21d12bd4','f01e73d7-238c-43ac-ae15-4e4aedac73ce',5.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9643da54-70ca-422e-9860-1e4014a25207','73bba7e2-640f-48da-b681-64d79c2ae9e0','f01e73d7-238c-43ac-ae15-4e4aedac73ce',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e9d382c1-710b-4972-a8a2-3813c3aee843','998ed6be-f894-4d11-bde8-22e46900a926','f01e73d7-238c-43ac-ae15-4e4aedac73ce',28.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f6a9782c-6f84-4fb1-978d-ad044cc27cf7','1d67d321-d82e-415e-8297-b24427aa46ae','f01e73d7-238c-43ac-ae15-4e4aedac73ce',63.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('31fca8fe-10e9-417f-9e16-c54486f6d50d','8239b53c-b2c4-480d-a8fa-2f4660c678be','f01e73d7-238c-43ac-ae15-4e4aedac73ce',555.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','f01e73d7-238c-43ac-ae15-4e4aedac73ce');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('9e819646-9bac-41c8-addf-00168366b440',N'Bánh mì gà nướng',N'Những miếng thịt được ướp qua đêm hoặc lâu hơn trong nước sốt có mùi tỏi tươi và được nướng hoàn hảo. Chúng nổi tiếng ở ngoại ô New York đến nỗi có một lễ hội mùa hè hàng năm kỷ niệm tất cả những thứ liên quan đến món gà nướng, bao gồm cả nấu ăn.',35,2,'https://www.eatingwell.com/thmb/jv-ItTdwT8mluW-bYylQqpZhxYA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8013009-81c86f3670104175be4df950e4b0b11d.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('778c1b08-2407-4cb0-b839-0df5d0bc87b5',1,N'Đánh đều nước cốt chanh, giấm, tỏi, húng quế, bạc hà, rau mùi tây, và 0.5 thìa cà phê muối và hạt tiêu trong một bát vừa.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7e1e6ab9-6307-48e2-bf23-0fbaf0fc40db',2,N'ừ từ đánh trong dầu.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('05f95ff1-b5c2-4059-9a45-f4dbdf4a3dd7',3,N'Dự trữ 0.25 cốc nước xốt trong một cái bát nhỏ và để trong tủ lạnh.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('4eb7cfe5-07be-4835-b70f-b471f0274316',4,N'Đặt gà vào một túi lớn có thể bịt kín và thêm nước xốt còn lại.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e3d722e5-f753-41ac-bedc-bf0006f1ecbf',5,N'Niêm phong túi và xoa bóp gà để phủ kỹ. Làm lạnh ít nhất 24 giờ và tối đa 48 giờ.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0def339e-92b2-4f51-88dc-db4c48fbaa50',6,N'Làm nóng lò nướng ở nhiệt độ cao.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c97f1e14-6024-4a5d-912b-e3663974dd82',7,N'Lấy gà ra khỏi nước xốt (bỏ phần nước xốt còn lại).','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f68f02af-1ead-46ed-af61-555d3bc15b38',8,N'Lau khô gà bằng khăn giấy và chia thành 4 xiên kim loại.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7d4f2ff1-b0be-4ea7-b1ae-e985e7b6d451',9,N'Tra dầu vào vỉ nướng. Nướng gà, lật thường xuyên, cho đến khi cháy đều các mặt từ 8 đến 10 phút','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('40f00dda-3a4d-49f6-a57c-25b6f35aca98',10,N'Chuyển sang đĩa sạch và để yên trong 10 phút.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('20980c0a-dfe0-4ba7-b037-a430044e0ff6',11,N'Lấy gà ra khỏi xiên và rắc 0.25 thìa cà phê muối và hạt tiêu còn lại vào mỗi miếng.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('147900aa-affd-4f63-8119-3f7412abea4e',12,N'Rưới với nước xốt dành riêng và phục vụ trên bánh.','','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6364cafa-8d1c-4883-a6fe-98e88fa6dc1c','9e819646-9bac-41c8-addf-00168366b440','03e26134-35df-4228-8b56-6d403a163af1',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('148f6566-bbba-471a-8002-e10f80fd0916','9e819646-9bac-41c8-addf-00168366b440','47baae7e-cef8-40ea-b008-47e720533710',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('96b335a1-9229-495e-9818-7d09bed6cc34','9e819646-9bac-41c8-addf-00168366b440','d938f228-5967-4e19-b432-34cf16837fb4',6.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a999649c-8705-4749-83aa-07c578bdf95d','9e819646-9bac-41c8-addf-00168366b440','33502109-1cbc-4238-a6e7-2a647a5e4640',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('79430ca6-fade-4048-be31-32d4f58c7881','9e819646-9bac-41c8-addf-00168366b440','e41475bc-ef90-4ac7-95d0-017c9da58216',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('20437233-e36d-4571-aa71-2d11059295a4','9e819646-9bac-41c8-addf-00168366b440','2d679e49-a61a-4801-b500-2d438b441231',0.75,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('e3a8cf89-361e-4f77-a0bb-3603a0d79608','9e819646-9bac-41c8-addf-00168366b440','2d2cfaed-ff0b-4eae-bb94-2653732ef1cc',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('f443089e-734c-4c19-a50d-898937d9c434','9e819646-9bac-41c8-addf-00168366b440','6d627c8d-bee4-435b-9a5c-e897ed94646e',450.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('65b9a57a-2f38-43bf-9432-20d02cb891fa','9e819646-9bac-41c8-addf-00168366b440','6bc051e7-1b8c-4cc0-90a4-2db023a84dd3',4.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('682d76cf-ea54-4252-8f76-8794113eddde','92df7117-d1fa-420a-9771-6d7f54fe5d33','9e819646-9bac-41c8-addf-00168366b440',382.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('13f91f2f-9223-4ce7-a2b0-67f6529661eb','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','9e819646-9bac-41c8-addf-00168366b440',449.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('f6704424-6316-4171-8f21-4ae4fed9c63a','71c34c3c-18da-4745-8b7d-4774800170ec','9e819646-9bac-41c8-addf-00168366b440',23.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('ef2fe982-7ce1-4b39-af29-59bd61dbac34','52c2699b-b628-4499-83d4-d478f7f9c902','9e819646-9bac-41c8-addf-00168366b440',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('57ff990a-e825-4a0b-a234-5a2c54ba629b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','9e819646-9bac-41c8-addf-00168366b440',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('77637ee9-fc44-4b29-805d-e8c16bb82d0a','73bba7e2-640f-48da-b681-64d79c2ae9e0','9e819646-9bac-41c8-addf-00168366b440',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e19adb52-65ba-49f5-81bc-3c9e7d6051ed','998ed6be-f894-4d11-bde8-22e46900a926','9e819646-9bac-41c8-addf-00168366b440',28.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('2046053b-e2ac-4fbf-9373-8d5d8eb2d22c','1d67d321-d82e-415e-8297-b24427aa46ae','9e819646-9bac-41c8-addf-00168366b440',63.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d9c89a17-9d21-4cce-9f84-5f6a10b4ce3c','8239b53c-b2c4-480d-a8fa-2f4660c678be','9e819646-9bac-41c8-addf-00168366b440',703.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('1614e397-a414-4ff7-a9d1-15b35161828c','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('4b16584e-daea-4faa-b13d-843ad9047ad5','9e819646-9bac-41c8-addf-00168366b440');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('cd0199dd-78a7-4e04-b7c2-54d3afad581f',N'Gà sốt me cay',N'Nước xốt này phù hợp nhất với những miếng thịt nấu nhanh như món gà nướng cay này, vì đường trong nước xốt có thể cháy nếu nướng quá lâu.',50,2,'https://www.eatingwell.com/thmb/5GCMyHYJtv3EEIdsbE5msTP9XVc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8012928-d0d22d40f76f4fddb434fb125a128760.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('5ab93a54-c7d8-40a5-903e-90acdcaa50df',1,N'Đánh bông sốt me, tỏi, gừng trong đĩa nướng','','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('0c1de099-a7eb-4e54-b130-296261aebf01',2,N'Làm nóng lò nướng ở mức trung bình cao.','','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c390161d-04fe-4d8d-95e2-1e9978e90133',3,N'Lấy gà ra khỏi nước ướp (bỏ nước ướp).','','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('e36232a1-86f6-4764-a5a4-7389f26b1fdb',4,N'Tra dầu vào vỉ nướng.','','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('19034dad-35f0-4894-8353-9af92061609c',5,N'Nướng gà, trở nửa chừng một lần từ 6 đến 10 phút','','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bb5c39e9-a884-4002-9213-cf98dc0efaed',6,N'Để yên trong 5 phút.','','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('2743cb0e-aac2-4127-8a91-c4113f3acfdb',7,N'Rắc hành lá và ăn kèm với nước sốt, nếu muốn.','','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1bfd0c8e-e83b-4253-b03b-e91acc711143','92df7117-d1fa-420a-9771-6d7f54fe5d33','cd0199dd-78a7-4e04-b7c2-54d3afad581f',149.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9baffd70-b432-4a0d-ab78-b88039ea6b20','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','cd0199dd-78a7-4e04-b7c2-54d3afad581f',182.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('215f4dcb-8483-48d5-998b-6dd8028c49ad','71c34c3c-18da-4745-8b7d-4774800170ec','cd0199dd-78a7-4e04-b7c2-54d3afad581f',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('1021e446-ad91-4fc4-9801-c6861ae81147','52c2699b-b628-4499-83d4-d478f7f9c902','cd0199dd-78a7-4e04-b7c2-54d3afad581f',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8d86e420-efd4-4cfa-965a-858005a1783b','6631457d-6680-4faa-aa2b-1e7e21d12bd4','cd0199dd-78a7-4e04-b7c2-54d3afad581f',4.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('439cb255-daab-457c-8f57-8f5e8056d592','73bba7e2-640f-48da-b681-64d79c2ae9e0','cd0199dd-78a7-4e04-b7c2-54d3afad581f',0.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('622db2da-0462-492f-888c-54be1c5c9931','998ed6be-f894-4d11-bde8-22e46900a926','cd0199dd-78a7-4e04-b7c2-54d3afad581f',21.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d938ffbf-a2e7-42fb-bd22-c906693f4776','1d67d321-d82e-415e-8297-b24427aa46ae','cd0199dd-78a7-4e04-b7c2-54d3afad581f',76.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9f437ff4-cfb1-4328-bdee-649c751b6dcb','8239b53c-b2c4-480d-a8fa-2f4660c678be','cd0199dd-78a7-4e04-b7c2-54d3afad581f',447.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('97114c05-61d6-4c18-bfe5-ae1679473562','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('1614e397-a414-4ff7-a9d1-15b35161828c','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('2c9b36f4-5dc5-482c-a940-ec514f14007c','cd0199dd-78a7-4e04-b7c2-54d3afad581f');
INSERT INTO [dbo].[Meals]([Id] ,[Name],[Summary],[CookingTime],[Difficulty],[ImageUrl])     
VALUES('0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',N'Gà nứơng với Chà bông BBQ cay ngọt',N'Trong công thức gà nướng nguyên con này, phần xương sống được rút ra và gà được làm dẹt rồi nướng dưới sức nặng của 2 viên gạch - giúp gà chín nhanh và đều.',105,2,'https://www.eatingwell.com/thmb/TtaddNgMbXd1viYkY7X8RC0zono=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3758752-e84ef2de8f2a4ad4b033fd029c4aa047.jpg');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('bff901d9-d212-4c76-8503-c1ed8e2d7e33',1,N'Trộn bột ớt, đường, thì là, muối, ớt, tỏi, gừng trong một bát nhỏ.','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ae4362f4-a6b9-4be7-a120-8514806784e6',2,N'Loại bỏ các miếng đệm ra khỏi thịt gà và cắt bỏ phần da và mỡ thừa.','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('d09b6888-e2be-4ddf-8ed8-b4a5f3f110a4',3,N'Dùng kéo nhà bếp, cắt gà xuống một bên xương sống, xuyên qua xương sườn. Thực hiện một vết cắt giống hệt ở phía đối diện để loại bỏ hoàn toàn xương sống','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('3d1ce209-bc45-4054-9f5a-dff978c8b1fa',4,N'Xoa hỗn hợp chà khô dưới da lên thịt ức, thịt chân rồi xoa một ít lên da.','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('7064a87e-3758-4eed-a09d-01af6df3553c',5,N'Để yên ở nhiệt độ phòng trong ít nhất 10 phút và tối đa 30 phút.','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ce856c02-a819-46c7-b329-308f491b4faa',6,N'Tra dầu vào vỉ nướng','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('6b9f2064-ed53-494b-b6dc-f2f4e82a72da',7,N'Đặt một viên gạch lên mỗi nửa con gà, đậy nắp và nướng cho đến khi da nổi rõ và vàng xung quanh các cạnh, từ 28 đến 30 phút.','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('ee6a7761-dbf5-465e-ada6-a0b177eac4b2',8,N'Đeo găng tay lò nướng, cẩn thận gỡ gạch.','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('b5548d5d-6c2f-4935-b0ba-e4190fb38ed3',9,N'Dùng thìa lớn lật gà cẩn thận','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('f2ead710-7a91-46d7-85af-41a74a0084bb',10,N'Đặt lại các viên gạch, đóng nắp và nướng với nhiệt độ 100 độ C trong vòng 30 phút','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[Directions]([Id],[StepNumber],[Instruction],[ImgUrl],[MealId])
     VALUES ('c5fc05fa-8974-4443-bfd9-92f5e43aa5c3',11,N'Sau đó đưa gà ra đĩa và dùng bữa','','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('114d605b-77fb-4a46-b9a9-dd318c140697','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','9c1e6bb4-a1b4-4638-8ec4-f4ef9dc779e4',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('7bb84b19-3503-4544-9eee-4d88f0632e5a','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','bc4f0475-7cb3-4764-86ed-d1b0c2430810',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('8ac9fe75-1c94-4bec-981e-9fb8ca1c7dc8','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','e41475bc-ef90-4ac7-95d0-017c9da58216',1.5,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('6ab233fb-1fed-419a-8f27-eaa5536108b9','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','35141130-f290-471b-aeb8-20d3c0e529ae',2.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('69670876-77e4-40ad-8335-9da7d454d081','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','d938f228-5967-4e19-b432-34cf16837fb4',4.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('a06f63f4-cf28-40f3-97c5-f992dce9cb47','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','a6d4322e-e06a-4edb-ac87-91a4eebac40b',1.0,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('324355a6-8b51-4c7b-a90a-39a23a8b07a9','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','2d679e49-a61a-4801-b500-2d438b441231',0.25,'');
INSERT INTO [dbo].[MealIngredients]([Id],[MealId],[IngredidentId],[Quantity],[Description])
     VALUES('9fac3890-bcc2-4eb9-9894-2f8fffd7c4a1','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca','6d627c8d-bee4-435b-9a5c-e897ed94646e',600.0,'');
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8760ccfb-c5a0-4d3f-9269-fdeef257660a','92df7117-d1fa-420a-9771-6d7f54fe5d33','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',178.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('9cc89226-d114-4eab-a3e3-2a2b56335067','9704fb97-1e8b-4b15-9d2d-3287ea28c1c5','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',232.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('5ba1ec86-9cb4-41d7-a97b-1da465e82afb','71c34c3c-18da-4745-8b7d-4774800170ec','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',8.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('60c9a07f-7636-43fd-9640-7a238dec98f2','52c2699b-b628-4499-83d4-d478f7f9c902','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',2.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('23cda2fc-5558-4316-b282-a3db0b470ad2','6631457d-6680-4faa-aa2b-1e7e21d12bd4','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',3.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d623c1cd-1025-4ca1-beaa-aa2938a7bab2','73bba7e2-640f-48da-b681-64d79c2ae9e0','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',1.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('d2f6b4b8-3701-4be7-b81d-fb6ad5739e5f','998ed6be-f894-4d11-bde8-22e46900a926','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',33.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('e3454a7a-6047-4a52-be57-1b0088aad18d','1d67d321-d82e-415e-8297-b24427aa46ae','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',98.0);
INSERT INTO [dbo].[NutritionFacts]([Id],[NutritionId] ,[MealId],[Value])
     VALUES('8baa3512-9d9c-41ee-bece-5e19f5d42ff3','8239b53c-b2c4-480d-a8fa-2f4660c678be','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca',755.0);
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('16f19919-ff34-4c41-8d4f-33842e3348fc','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('00017b26-b9ef-4bfe-9eb1-f058d786b695','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('fe21ccee-e6a8-457d-8dc8-4a5901ff8be5','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');
INSERT INTO [dbo].[MealTags] ([TagId] ,[MealId])
     VALUES('b02b38d4-a849-4da1-b121-3a33da522447','0c418df9-1d2d-4d0b-ae32-30a6ff46cbca');


INSERT INTO [dbo].[Subscriptions]([Id] ,[Name],[Value],[Duration],[Code])
     VALUES('8F7F076B-F663-4C9C-A3A6-1D4CCDD65F56',N'Free',0,0,'FREE');
INSERT INTO [dbo].[Subscriptions]([Id] ,[Name],[Value],[Duration],[Code])
     VALUES('C04E75D0-3365-4D4A-9A4A-5A09D1C0F8C6',N'Classic',69000,1,'CLASSIC');
INSERT INTO [dbo].[Subscriptions]([Id] ,[Name],[Value],[Duration],[Code])
     VALUES('014D1CDA-C01D-4F39-98C9-866703C74766',N'Premium',250000,0,'PREMIUM');

INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('5D7F43FB-BEA9-4EA0-B165-004F6E14BE92',N'10 món',1,'8F7F076B-F663-4C9C-A3A6-1D4CCDD65F56');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('E5FAB4DF-7884-4476-9609-00A987600E01',N'Giá trị dinh dưỡng chi tiết của nguyên liệu trong thực đơn',1,'8F7F076B-F663-4C9C-A3A6-1D4CCDD65F56');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('A7341427-5F01-4356-A5CD-00B7A6063532',N'Cách chế biến món ăn',1,'8F7F076B-F663-4C9C-A3A6-1D4CCDD65F56');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('0555F0AD-0E42-4EC5-8460-06BCCBFCBE32',N'Cá nhân hoá thực đơn theo tình trạng sức khoẻ',0,'8F7F076B-F663-4C9C-A3A6-1D4CCDD65F56');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('A8FA3065-62FC-4A4D-A1B9-07193FA8E3D0',N'Cho phép lưu lại các món ăn yêu thích',0,'8F7F076B-F663-4C9C-A3A6-1D4CCDD65F56');

INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('3701FCFA-E11B-4D59-A556-08B59A3E2634',N'50 món',1,'C04E75D0-3365-4D4A-9A4A-5A09D1C0F8C6');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('DB376678-5950-4FD9-8056-0AB3394EF8A9',N'Giá trị dinh dưỡng chi tiết của nguyên liệu trong thực đơn',1,'C04E75D0-3365-4D4A-9A4A-5A09D1C0F8C6');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('A2CE3DCD-98AC-4CA5-B08C-0D7501B3B276',N'Cách chế biến món ăn',1,'C04E75D0-3365-4D4A-9A4A-5A09D1C0F8C6');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('EC7100B2-E683-4677-B866-0EC600583AA8',N'Cá nhân hoá thực đơn theo tình trạng sức khoẻ',1,'C04E75D0-3365-4D4A-9A4A-5A09D1C0F8C6');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('3372E60F-5339-4E80-8162-1046F380E23C',N'Cho phép lưu lại các món ăn yêu thích',1,'C04E75D0-3365-4D4A-9A4A-5A09D1C0F8C6');

INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('2502CBD2-432E-425A-A6F2-111A5BB47F1D',N'Không giới hạn món ăn',1,'014D1CDA-C01D-4F39-98C9-866703C74766');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('38009C09-BF15-40FC-940E-11F6092906F6',N'Giá trị dinh dưỡng chi tiết của nguyên liệu trong thực đơn',1,'014D1CDA-C01D-4F39-98C9-866703C74766');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('2CB89F74-4C9B-4CCD-A973-1398E6F01CCA',N'Cách chế biến món ăn',1,'014D1CDA-C01D-4F39-98C9-866703C74766');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('CFE6E81E-5909-46F1-9301-14134AD0D587',N'Cá nhân hoá thực đơn theo tình trạng sức khoẻ',1,'014D1CDA-C01D-4F39-98C9-866703C74766');
INSERT INTO [dbo].[SubscriptionDetails]([Id],[Detail],[Status],[SubscriptionId])
     VALUES('31DFA4D1-61AB-458B-B29E-143DE7C22EA4',N'Cho phép lưu lại các món ăn yêu thích',1,'014D1CDA-C01D-4F39-98C9-866703C74766');

	 
INSERT [dbo].[Questions] ([id], [Content], [Index]) VALUES (N'e52a5fdf-5c4f-43bb-a3b9-2c9b4000158b', N'Trong các thành viên có thành viên nào di ứng với thành phần nguyên liệu nào không?', 2)
INSERT [dbo].[Questions] ([id], [Content], [Index]) VALUES (N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'Trong các thành viên có thành viên nào bị mắc các chứng bệnh sau đây không?', 1)
INSERT [dbo].[Questions] ([id], [Content], [Index]) VALUES (N'19e999f4-5394-47f6-8703-d43a065f4237', N'Bạn là người ăn chay ?', 3)
INSERT [dbo].[Questions] ([id], [Content], [Index]) VALUES (N'587e72aa-e72f-4904-8e56-df403b767dea', N'Vui lòng điền số lượng người tham gia bữa ăn', 0)
INSERT [dbo].[Questions] ([id], [Content], [Index]) VALUES (N'c5cedadb-ed0a-485d-b6de-ec67d62eebc8', N'Mức Calories trong bữa ăn mà bạn mong muốn', 4)

INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'5ab3b753-7c7f-44dc-8a37-198b94412a33', N'3', N'587e72aa-e72f-4904-8e56-df403b767dea', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'04a2f3eb-953c-4bce-8318-24ef3e82f6cd', N'1', N'587e72aa-e72f-4904-8e56-df403b767dea', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'b0a02061-2ba5-4d29-bbfc-3476182d16d5', N'5', N'587e72aa-e72f-4904-8e56-df403b767dea', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'7bc03666-1aec-40dc-96b8-555219fb1ffe', N'Min', N'c5cedadb-ed0a-485d-b6de-ec67d62eebc8', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'e0859a0b-8c91-4a25-8732-556168b66897', N'Cao huyết áp', N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'b02b38d4-a849-4da1-b121-3a33da522447')
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'a94e1ff6-fe4d-44db-8e83-5dbb120ea987', N'2', N'587e72aa-e72f-4904-8e56-df403b767dea', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'0b3aade0-9173-4ef1-af9e-6292d5d05b82', N'Tiểu đường', N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'97114c05-61d6-4c18-bfe5-ae1679473562')
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'c5bf4c7c-a01b-465c-8879-6fbb8938771a', N'Bệnh tim', N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'fe21ccee-e6a8-457d-8dc8-4a5901ff8be5')
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'2566879c-272d-4c92-89e9-81e00a592a89', N'6', N'587e72aa-e72f-4904-8e56-df403b767dea', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'e2de4570-184c-4572-b788-828f7316fd52', N'Bệnh về gan', N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'1614e397-a414-4ff7-a9d1-15b35161828c')
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'c5922ec9-94eb-490a-9d66-83d1087a9f71', N'Bệnh về thận', N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'5f2e1dbf-aa63-4da0-9e50-f3aef9d386cc')
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'ef7a13f4-4d31-4d05-a6f1-994aa6fbc5dd', N'Max', N'c5cedadb-ed0a-485d-b6de-ec67d62eebc8', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'54b22571-7eff-4ac1-bebc-c303f5620f62', N'4', N'587e72aa-e72f-4904-8e56-df403b767dea', null)
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'5a22d58a-5af9-4395-aac8-f730abdc0db2', N'Dạ dày', N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'00017b26-b9ef-4bfe-9eb1-f058d786b695')
INSERT [dbo].[Answers] ([Id], [Content], [QuestionId], [TagId]) VALUES (N'434b08e0-2e79-422d-84cc-66f6bad58bee', N'Béo phì', N'2d2d9f32-f571-4b47-b41b-bf42e1576c88', N'16f19919-ff34-4c41-8d4f-33842e3348fc')

