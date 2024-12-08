.class public Lnet/hockeyapp/android/utils/FeedbackParser;
.super Ljava/lang/Object;
.source "FeedbackParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/FeedbackParser$1;,
        Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/FeedbackParser$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/hockeyapp/android/utils/FeedbackParser$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/FeedbackParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/FeedbackParser;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;->INSTANCE:Lnet/hockeyapp/android/utils/FeedbackParser;

    return-object v0
.end method


# virtual methods
.method public parseFeedbackResponse(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;
    .locals 27
    .param p1, "feedbackResponseJson"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v9, 0x0

    .line 42
    .local v9, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    const/4 v5, 0x0

    .line 43
    .local v5, "feedback":Lnet/hockeyapp/android/objects/Feedback;
    if-eqz p1, :cond_1

    .line 45
    :try_start_0
    new-instance v25, Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 47
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v25, "feedback"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 48
    .local v8, "feedbackObject":Lorg/json/JSONObject;
    new-instance v6, Lnet/hockeyapp/android/objects/Feedback;

    invoke-direct {v6}, Lnet/hockeyapp/android/objects/Feedback;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    .line 51
    .end local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .local v6, "feedback":Lnet/hockeyapp/android/objects/Feedback;
    :try_start_1
    const-string v25, "messages"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 52
    .local v15, "messagesArray":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .line 54
    .local v14, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    const/4 v7, 0x0

    .line 55
    .local v7, "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 56
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .restart local v14    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_0

    .line 59
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "subject"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 60
    .local v20, "subject":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "text"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    .line 61
    .local v21, "text":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "oem"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 62
    .local v18, "oem":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "model"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    .line 63
    .local v16, "model":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "os_version"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    .line 64
    .local v19, "osVersion":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "created_at"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "createdAt":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "id"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 66
    .local v12, "id":I
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "token"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    .line 67
    .local v22, "token":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "via"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 68
    .local v24, "via":I
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "user_string"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 69
    .local v23, "userString":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "clean_text"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "cleanText":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "name"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    .line 71
    .local v17, "name":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "app_id"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "appId":Ljava/lang/String;
    new-instance v7, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .end local v7    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-direct {v7}, Lnet/hockeyapp/android/objects/FeedbackMessage;-><init>()V

    .line 74
    .restart local v7    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-virtual {v7, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setAppId(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7, v2}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCleanText(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v7, v3}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCreatedAt(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v7, v12}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setId(I)V

    .line 78
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setModel(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setName(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOem(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOsVersion(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setSubjec(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setText(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setToken(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setUserString(Ljava/lang/String;)V

    .line 86
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setVia(I)V

    .line 88
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 92
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "cleanText":Ljava/lang/String;
    .end local v3    # "createdAt":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "id":I
    .end local v16    # "model":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "oem":Ljava/lang/String;
    .end local v19    # "osVersion":Ljava/lang/String;
    .end local v20    # "subject":Ljava/lang/String;
    .end local v21    # "text":Ljava/lang/String;
    .end local v22    # "token":Ljava/lang/String;
    .end local v23    # "userString":Ljava/lang/String;
    .end local v24    # "via":I
    :cond_0
    invoke-virtual {v6, v14}, Lnet/hockeyapp/android/objects/Feedback;->setMessages(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :try_start_2
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lnet/hockeyapp/android/objects/Feedback;->setName(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :goto_1
    :try_start_3
    const-string v25, "email"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lnet/hockeyapp/android/objects/Feedback;->setEmail(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 107
    :goto_2
    :try_start_4
    const-string v25, "id"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lnet/hockeyapp/android/objects/Feedback;->setId(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 113
    :goto_3
    :try_start_5
    const-string v25, "created_at"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lnet/hockeyapp/android/objects/Feedback;->setCreatedAt(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 118
    :goto_4
    :try_start_6
    new-instance v10, Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct {v10}, Lnet/hockeyapp/android/objects/FeedbackResponse;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 119
    .end local v9    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .local v10, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :try_start_7
    invoke-virtual {v10, v6}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setFeedback(Lnet/hockeyapp/android/objects/Feedback;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 121
    :try_start_8
    const-string v25, "status"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setStatus(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    .line 128
    :goto_5
    :try_start_9
    const-string v25, "token"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setToken(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_6
    move-object v5, v6

    .end local v6    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    move-object v9, v10

    .line 137
    .end local v7    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v8    # "feedbackObject":Lorg/json/JSONObject;
    .end local v10    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v15    # "messagesArray":Lorg/json/JSONArray;
    .restart local v9    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_1
    :goto_7
    return-object v9

    .line 96
    .end local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v6    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v7    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .restart local v8    # "feedbackObject":Lorg/json/JSONObject;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .restart local v15    # "messagesArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Lorg/json/JSONException;
    :try_start_a
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    .line 132
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v14    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v15    # "messagesArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v4

    move-object v5, v6

    .line 133
    .end local v6    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v8    # "feedbackObject":Lorg/json/JSONObject;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "e":Lorg/json/JSONException;
    .restart local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    :goto_8
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 102
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v6    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v7    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .restart local v8    # "feedbackObject":Lorg/json/JSONObject;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .restart local v15    # "messagesArray":Lorg/json/JSONArray;
    :catch_2
    move-exception v4

    .line 103
    .restart local v4    # "e":Lorg/json/JSONException;
    :try_start_b
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 108
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v4

    .line 109
    .restart local v4    # "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 114
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v4

    .line 115
    .restart local v4    # "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 122
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v9    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v10    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_5
    move-exception v4

    .line 123
    .restart local v4    # "e":Lorg/json/JSONException;
    :try_start_c
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 132
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    move-object v9, v10

    .end local v10    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v9    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    goto :goto_8

    .line 129
    .end local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v9    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v6    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v10    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_7
    move-exception v4

    .line 130
    .restart local v4    # "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_6

    .line 132
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v7    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v8    # "feedbackObject":Lorg/json/JSONObject;
    .end local v10    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v15    # "messagesArray":Lorg/json/JSONArray;
    .restart local v5    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v9    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_8
    move-exception v4

    goto :goto_8
.end method
