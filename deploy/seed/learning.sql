BEGIN TRANSACTION;
CREATE TABLE field_outcome (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sender TEXT NOT NULL, field TEXT NOT NULL,
    confirmed INTEGER NOT NULL DEFAULT 0, corrected INTEGER NOT NULL DEFAULT 0,
    last_seen TEXT NOT NULL,
    UNIQUE (sender, field)
);
INSERT INTO "field_outcome" VALUES(1,'אסף הרופא','first_name',0,1,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(2,'אסף הרופא','last_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(3,'אסף הרופא','national_id',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(4,'אסף הרופא','receipt_date',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(5,'אסף הרופא','sender',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(6,'אסף הרופא','central_number',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(7,'הלל יפה','first_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(8,'הלל יפה','last_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(9,'הלל יפה','national_id',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(10,'הלל יפה','receipt_date',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(11,'הלל יפה','sender',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(12,'הלל יפה','central_number',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(13,'הלל יפה','commitment_number',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(14,'וולפסון','first_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(15,'וולפסון','last_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(16,'וולפסון','national_id',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(17,'וולפסון','receipt_date',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(18,'וולפסון','sender',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(19,'וולפסון','central_number',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(20,'לניאדו','first_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(21,'לניאדו','last_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(22,'לניאדו','national_id',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(23,'לניאדו','receipt_date',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(24,'לניאדו','sender',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(25,'לניאדו','central_number',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(26,'לניאדו','commitment_number',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(27,'מאיר','first_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(28,'מאיר','last_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(29,'מאיר','national_id',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(30,'מאיר','receipt_date',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(31,'מאיר','sender',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(32,'מאיר','central_number',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(33,'זיו','first_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(34,'זיו','last_name',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(35,'זיו','national_id',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(36,'זיו','receipt_date',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(37,'זיו','sender',1,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "field_outcome" VALUES(38,'זיו','central_number',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(39,'העמק','first_name',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(40,'העמק','national_id',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(41,'העמק','receipt_date',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(42,'העמק','sender',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(43,'העמק','central_number',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(44,'ברזילי','first_name',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(45,'ברזילי','last_name',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(46,'ברזילי','national_id',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(47,'ברזילי','receipt_date',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(48,'ברזילי','sender',1,0,'2026-10-23T01:06:36+00:00');
INSERT INTO "field_outcome" VALUES(49,'ברזילי','central_number',1,0,'2026-10-23T01:06:36+00:00');
CREATE TABLE label_synonym (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sender TEXT NOT NULL, field TEXT NOT NULL, label_text TEXT NOT NULL,
    hits INTEGER NOT NULL DEFAULT 1, approved INTEGER NOT NULL DEFAULT 0,
    UNIQUE (sender, field, label_text)
);
INSERT INTO "label_synonym" VALUES(1,'אסף הרופא','national_id','מ.ז.',1,0);
INSERT INTO "label_synonym" VALUES(2,'הלל יפה','first_name','מטופל',1,0);
INSERT INTO "label_synonym" VALUES(3,'הלל יפה','last_name','מטופל',1,0);
INSERT INTO "label_synonym" VALUES(4,'הלל יפה','national_id','ת.ז.',1,0);
INSERT INTO "label_synonym" VALUES(5,'הלל יפה','receipt_date','התקבל',1,0);
INSERT INTO "label_synonym" VALUES(6,'הלל יפה','central_number','מרכזי',1,0);
INSERT INTO "label_synonym" VALUES(7,'לניאדו','last_name','שם',1,0);
INSERT INTO "label_synonym" VALUES(8,'לניאדו','national_id','מ.ז.',1,0);
INSERT INTO "label_synonym" VALUES(9,'לניאדו','central_number','מרכזי',1,0);
INSERT INTO "label_synonym" VALUES(10,'לניאדו','commitment_number','מס''',1,0);
INSERT INTO "label_synonym" VALUES(11,'מאיר','national_id','ת.ז.',1,0);
INSERT INTO "label_synonym" VALUES(12,'מאיר','receipt_date','התקבל',1,0);
INSERT INTO "label_synonym" VALUES(13,'העמק','national_id','מזכרת בתיה',1,0);
INSERT INTO "label_synonym" VALUES(14,'העמק','central_number','מרכזי',1,0);
CREATE TABLE layout_hint (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sender TEXT NOT NULL, field TEXT NOT NULL, page_role TEXT NOT NULL,
    region_kind TEXT NOT NULL,
    y_min REAL NOT NULL CHECK (y_min BETWEEN 0 AND 1),
    x_min REAL NOT NULL CHECK (x_min BETWEEN 0 AND 1),
    y_max REAL NOT NULL CHECK (y_max BETWEEN 0 AND 1),
    x_max REAL NOT NULL CHECK (x_max BETWEEN 0 AND 1),
    label_text TEXT NOT NULL DEFAULT '', source_kind TEXT NOT NULL,
    hits INTEGER NOT NULL DEFAULT 1, last_seen TEXT NOT NULL,
    UNIQUE (sender, field, page_role, label_text, source_kind)
);
INSERT INTO "layout_hint" VALUES(1,'שניידר','central_number','primary_form','central_sticker',9.52768729641693818e-02,4.819801980198019642e-01,1.164495114006514621e-01,5.603960396039604496e-01,'','barcode',1,'2026-10-22T17:04:37+00:00');
INSERT INTO "layout_hint" VALUES(2,'וולפסון','receipt_date','primary_form','receipt_stamp',0.624,0.089,0.641,0.208,'','stamp',1,'2026-10-22T17:04:37+00:00');
INSERT INTO "layout_hint" VALUES(3,'וולפסון','sender','primary_form','letterhead',0.0475,4.080000000000000294e-01,1.070000000000000118e-01,0.791,'','printed',2,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(4,'וולפסון','commitment_number','primary_form','commitment_label',7.209631728045325927e-01,1.092741935483870914e-01,7.736543909348442271e-01,2.254032258064516125e-01,'','barcode',1,'2026-10-22T17:04:37+00:00');
INSERT INTO "layout_hint" VALUES(5,'אסף הרופא','first_name','primary_form','patient_box',0.4018,2.957999999999999518e-01,0.4502,0.5092,'','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(6,'אסף הרופא','national_id','primary_form','patient_box',0.415,0.525,0.437,0.726,'מ.ז.','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(7,'אסף הרופא','receipt_date','primary_form','receipt_stamp',0.903,0.234,0.937,0.386,'','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(8,'אסף הרופא','sender','primary_form','letterhead',0.046,0.434,0.131,0.92,'','printed',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(9,'אסף הרופא','central_number','primary_form','central_sticker',4.771269773407438852e-01,1.009063444108761338e-01,5.733219324497648151e-01,1.359516616314199456e-01,'','barcode',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(10,'הלל יפה','first_name','primary_form','patient_box',0.414,0.694,0.468,0.754,'מטופל','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(11,'הלל יפה','last_name','primary_form','patient_box',0.414,0.638,0.468,0.689,'מטופל','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(12,'הלל יפה','national_id','primary_form','patient_box',0.286,0.299,0.315,0.43,'ת.ז.','printed',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(13,'הלל יפה','receipt_date','primary_form','receipt_stamp',0.389,0.211,0.428,0.313,'התקבל','stamp',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(14,'הלל יפה','sender','primary_form','letterhead',0.163,0.73,0.224,0.856,'','printed',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(15,'הלל יפה','central_number','primary_form','central_sticker',0.540785498489426,1.735784523300555881e-01,5.939577039274924753e-01,2.637879435656263483e-01,'מרכזי','barcode',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(16,'הלל יפה','commitment_number','primary_form','commitment_label',6.036253776435045459e-01,5.929884566053869043e-01,6.41087613293051306e-01,6.69944420692603626e-01,'','barcode',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(17,'וולפסון','first_name','primary_form','patient_box',0.298,0.281,0.326,0.378,'','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(18,'וולפסון','last_name','primary_form','patient_box',0.298,0.168,0.326,0.273,'','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(19,'וולפסון','national_id','primary_form','patient_box',0.3128,0.0,3.611999999999999655e-01,0.5024,'','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(20,'וולפסון','receipt_date','primary_form','receipt_stamp',0.144,0.404,0.168,0.519,'','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(22,'וולפסון','central_number','primary_form','central_sticker',0.083,0.393,0.098,0.466,'','printed',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(23,'לניאדו','last_name','primary_form','patient_box',0.405,0.368,0.431,0.43,'שם','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(24,'לניאדו','national_id','primary_form','patient_box',0.413,0.569,0.428,0.722,'מ.ז.','printed',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(25,'לניאדו','receipt_date','primary_form','receipt_stamp',0.912,0.235,0.94,0.375,'','handwritten',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(26,'לניאדו','sender','primary_form','letterhead',0.048,0.638,0.135,0.932,'','printed',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(27,'לניאדו','central_number','primary_form','central_sticker',4.890979050876442801e-01,1.045317220543806602e-01,5.823001282599401529e-01,1.54078549848942592e-01,'מרכזי','barcode',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(28,'לניאדו','commitment_number','primary_form','commitment_label',0.177,0.765,0.197,0.85,'מס''','printed',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "layout_hint" VALUES(29,'מאיר','national_id','primary_form','patient_box',0.288,0.333,0.325,0.452,'ת.ז.','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(30,'מאיר','receipt_date','primary_form','receipt_stamp',0.363,0.229,0.39,0.331,'התקבל','stamp',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(31,'מאיר','sender','primary_form','letterhead',0.187,0.808,0.246,0.894,'','printed',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(32,'מאיר','central_number','primary_form','central_sticker',5.697885196374622429e-01,1.859769132107738366e-01,6.102719033232628654e-01,2.744762719110730997e-01,'','barcode',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(33,'זיו','first_name','primary_form','patient_box',0.308,0.135,0.333,0.201,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(34,'זיו','national_id','primary_form','patient_box',0.327,0.118,0.351,0.363,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(35,'זיו','receipt_date','primary_form','receipt_stamp',0.143,0.415,0.166,0.516,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(36,'זיו','sender','primary_form','letterhead',0.038,0.778,0.086,0.912,'','printed',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(37,'זיו','central_number','primary_form','central_sticker',4.660111158614792943e-02,3.558912386706948872e-01,8.636169303120991291e-02,4.827794561933534956e-01,'','barcode',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(38,'העמק','national_id','primary_form','patient_box',0.3012,4.860000000000003206e-02,3.627999999999999558e-01,4.643999999999999239e-01,'מזכרת בתיה','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(39,'העמק','receipt_date','primary_form','receipt_stamp',0.144,0.392,0.167,0.506,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(40,'העמק','sender','primary_form','letterhead',0.041,0.584,0.091,0.912,'','printed',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(41,'העמק','central_number','primary_form','central_sticker',3.805044890979050742e-02,4.072507552870090474e-01,7.952116289012398087e-02,5.317220543806646659e-01,'מרכזי','barcode',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(42,'ברזילי','first_name','primary_form','patient_box',0.308,0.148,0.335,0.216,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(43,'ברזילי','last_name','primary_form','patient_box',0.308,0.216,0.335,0.35,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(44,'ברזילי','national_id','primary_form','patient_box',0.323,0.162,0.346,0.348,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(45,'ברזילי','receipt_date','primary_form','receipt_stamp',0.155,0.376,0.176,0.511,'','handwritten',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(46,'ברזילי','sender','primary_form','letterhead',0.035,0.705,0.082,0.903,'','printed',1,'2026-10-23T01:06:35+00:00');
INSERT INTO "layout_hint" VALUES(47,'ברזילי','central_number','primary_form','central_sticker',3.976058144506199043e-02,3.933534743202417028e-01,7.182556648140231426e-02,5.214501510574017784e-01,'','barcode',1,'2026-10-23T01:06:35+00:00');
CREATE TABLE pattern_hint (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sender TEXT NOT NULL, field TEXT NOT NULL, shape TEXT NOT NULL,
    hits INTEGER NOT NULL DEFAULT 1, last_seen TEXT NOT NULL,
    UNIQUE (sender, field, shape)
);
INSERT INTO "pattern_hint" VALUES(1,'וולפסון','commitment_number','#######',1,'2026-10-22T17:04:37+00:00');
INSERT INTO "pattern_hint" VALUES(2,'הלל יפה','commitment_number','A######',1,'2026-10-23T01:06:34+00:00');
INSERT INTO "pattern_hint" VALUES(3,'לניאדו','commitment_number','#####',1,'2026-10-23T01:06:34+00:00');
CREATE TABLE reader_outcome (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    field TEXT NOT NULL, reader TEXT NOT NULL,
    disputes INTEGER NOT NULL DEFAULT 0, right_count INTEGER NOT NULL DEFAULT 0,
    last_seen TEXT NOT NULL,
    UNIQUE (field, reader)
);
INSERT INTO "reader_outcome" VALUES(1,'first_name','page',2,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "reader_outcome" VALUES(2,'first_name','verify',2,0,'2026-10-23T01:06:35+00:00');
INSERT INTO "reader_outcome" VALUES(3,'first_name','zoom',2,1,'2026-10-23T01:06:35+00:00');
CREATE TABLE run_metric (
    id INTEGER PRIMARY KEY AUTOINCREMENT, at TEXT NOT NULL,
    fields_total INTEGER NOT NULL, fields_closed_local INTEGER NOT NULL,
    fields_escalated INTEGER NOT NULL, fields_flagged INTEGER NOT NULL,
    local_close_rate REAL NOT NULL, provider_calls INTEGER NOT NULL,
    engine_version TEXT NOT NULL
);
INSERT INTO "run_metric" VALUES(1,'2026-10-22T11:41:11+00:00',182,8,0,174,4.395604395604395948e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(2,'2026-10-22T11:41:51+00:00',182,8,0,174,4.395604395604395948e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(3,'2026-10-22T11:55:58+00:00',182,8,0,174,4.395604395604395948e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(4,'2026-10-22T12:30:24+00:00',182,8,0,174,4.395604395604395948e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(5,'2026-10-22T14:11:59+00:00',182,8,23,166,4.395604395604395948e-02,9,'0.1.0');
INSERT INTO "run_metric" VALUES(6,'2026-10-22T14:22:29+00:00',154,14,13,133,9.090909090909091161e-02,8,'0.1.0');
INSERT INTO "run_metric" VALUES(7,'2026-10-22T16:22:03+00:00',182,8,0,174,4.395604395604395948e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(8,'2026-10-22T16:24:34+00:00',182,8,0,174,4.395604395604395948e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(9,'2026-10-22T16:27:28+00:00',21,0,21,16,0.0,4,'0.1.0');
INSERT INTO "run_metric" VALUES(10,'2026-10-22T16:55:44+00:00',154,13,7,138,8.441558441558441595e-02,2,'0.1.0');
INSERT INTO "run_metric" VALUES(11,'2026-10-22T17:26:44+00:00',154,14,0,140,9.090909090909091161e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(12,'2026-10-22T18:00:21+00:00',182,7,0,175,3.846153846153846367e-02,0,'0.1.0');
INSERT INTO "run_metric" VALUES(13,'2026-10-22T18:30:32+00:00',182,0,182,68,0.0,0,'0.1.0');
INSERT INTO "run_metric" VALUES(14,'2026-10-22T18:59:36+00:00',182,0,182,66,0.0,32,'0.1.0');
INSERT INTO "run_metric" VALUES(15,'2026-10-22T19:36:50+00:00',182,0,182,42,0.0,0,'0.1.0');
INSERT INTO "run_metric" VALUES(16,'2026-10-22T20:45:09+00:00',182,0,182,32,0.0,26,'0.1.0');
INSERT INTO "run_metric" VALUES(17,'2026-10-22T22:02:29+00:00',182,0,182,70,0.0,26,'0.1.0');
INSERT INTO "run_metric" VALUES(18,'2026-10-22T23:03:55+00:00',182,0,182,24,0.0,26,'0.1.0');
INSERT INTO "run_metric" VALUES(19,'2026-10-22T23:09:45+00:00',154,0,154,11,0.0,44,'0.1.0');
INSERT INTO "run_metric" VALUES(20,'2026-10-22T23:12:43+00:00',154,0,154,11,0.0,0,'0.1.0');
INSERT INTO "run_metric" VALUES(21,'2026-10-22T23:28:36+00:00',182,0,182,20,0.0,52,'0.1.0');
INSERT INTO "run_metric" VALUES(22,'2026-10-22T23:28:38+00:00',154,0,154,11,0.0,44,'0.1.0');
INSERT INTO "run_metric" VALUES(23,'2026-10-22T23:43:33+00:00',182,0,182,20,0.0,0,'0.1.0');
INSERT INTO "run_metric" VALUES(24,'2026-10-22T23:47:33+00:00',42,0,42,11,0.0,12,'0.1.0');
INSERT INTO "run_metric" VALUES(25,'2026-10-23T00:29:13+00:00',42,0,42,9,0.0,0,'0.1.0');
INSERT INTO "run_metric" VALUES(26,'2026-10-23T00:38:16+00:00',35,0,35,2,0.0,10,'0.1.0');
INSERT INTO "run_metric" VALUES(27,'2026-10-23T00:40:45+00:00',35,0,35,9,0.0,10,'0.1.0');
INSERT INTO "run_metric" VALUES(28,'2026-10-23T00:53:50+00:00',42,0,42,9,0.0,0,'0.1.0');
INSERT INTO "run_metric" VALUES(29,'2026-10-23T01:04:05+00:00',70,0,70,23,0.0,20,'0.1.0');
INSERT INTO "run_metric" VALUES(30,'2026-10-23T01:14:14+00:00',70,0,70,18,0.0,20,'0.1.0');
INSERT INTO "run_metric" VALUES(31,'2026-10-23T01:16:45+00:00',42,0,42,9,0.0,0,'0.1.0');
INSERT INTO "run_metric" VALUES(32,'2026-10-23T01:51:05+00:00',42,0,42,8,0.0,12,'0.1.0');
INSERT INTO "run_metric" VALUES(33,'2026-10-23T01:53:40+00:00',42,0,42,9,0.0,0,'0.1.0');
CREATE TABLE sender_proposal (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    canonical TEXT NOT NULL UNIQUE, keywords TEXT NOT NULL,
    hits INTEGER NOT NULL DEFAULT 1, approved INTEGER NOT NULL DEFAULT 0
);
CREATE INDEX ix_layout_lookup ON layout_hint (sender, field);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('run_metric',33);
INSERT INTO "sqlite_sequence" VALUES('layout_hint',47);
INSERT INTO "sqlite_sequence" VALUES('pattern_hint',3);
INSERT INTO "sqlite_sequence" VALUES('label_synonym',14);
INSERT INTO "sqlite_sequence" VALUES('field_outcome',49);
INSERT INTO "sqlite_sequence" VALUES('reader_outcome',6);
COMMIT;