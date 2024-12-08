.class public Lcom/yopeso/lieferando/util/OpeningUtils;
.super Ljava/lang/Object;
.source "OpeningUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareHours(Ljava/util/Date;Ljava/util/Date;Z)I
    .locals 10
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;
    .param p2, "comparingCloseHours"    # Z

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 119
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 120
    .local v2, "h1":I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 122
    .local v4, "m1":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 123
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 125
    .local v3, "h2":I
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 130
    .local v5, "m2":I
    if-eqz p2, :cond_0

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    .line 131
    const/16 v3, 0x18

    .line 134
    :cond_0
    if-le v2, v3, :cond_2

    .line 143
    :cond_1
    :goto_0
    return v6

    .line 136
    :cond_2
    if-ge v2, v3, :cond_3

    move v6, v7

    .line 137
    goto :goto_0

    .line 138
    :cond_3
    if-gt v4, v5, :cond_1

    .line 140
    if-ge v4, v5, :cond_4

    move v6, v7

    .line 141
    goto :goto_0

    .line 143
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getDayOfWeek(I)Ljava/lang/String;
    .locals 2
    .param p0, "day"    # I

    .prologue
    .line 45
    const-string v0, ""

    .line 47
    .local v0, "today":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 96
    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    const-string v0, "So"

    .line 51
    goto :goto_0

    .line 53
    :pswitch_1
    const-string v0, "Mo"

    .line 54
    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "Di"

    .line 57
    goto :goto_0

    .line 59
    :pswitch_3
    const-string v0, "Mi"

    .line 60
    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "Do"

    .line 63
    goto :goto_0

    .line 65
    :pswitch_5
    const-string v0, "Fr"

    .line 66
    goto :goto_0

    .line 68
    :pswitch_6
    const-string v0, "Sa"

    goto :goto_0

    .line 72
    :cond_0
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    .line 77
    :pswitch_7
    const-string v0, "Pn"

    .line 78
    goto :goto_0

    .line 74
    :pswitch_8
    const-string v0, "Nd"

    .line 75
    goto :goto_0

    .line 80
    :pswitch_9
    const-string v0, "Wt"

    .line 81
    goto :goto_0

    .line 83
    :pswitch_a
    const-string v0, "\u015ar"

    .line 84
    goto :goto_0

    .line 86
    :pswitch_b
    const-string v0, "Cz"

    .line 87
    goto :goto_0

    .line 89
    :pswitch_c
    const-string v0, "Pt"

    .line 90
    goto :goto_0

    .line 92
    :pswitch_d
    const-string v0, "So"

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch

    .line 72
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method public static getWeekDay(Ljava/util/Calendar;)I
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 16
    const/4 v1, -0x1

    .line 17
    .local v1, "today":I
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 18
    .local v0, "day":I
    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return v1

    .line 20
    :pswitch_0
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 23
    :pswitch_1
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :pswitch_2
    const/4 v1, 0x2

    .line 27
    goto :goto_0

    .line 29
    :pswitch_3
    const/4 v1, 0x3

    .line 30
    goto :goto_0

    .line 32
    :pswitch_4
    const/4 v1, 0x4

    .line 33
    goto :goto_0

    .line 35
    :pswitch_5
    const/4 v1, 0x5

    .line 36
    goto :goto_0

    .line 38
    :pswitch_6
    const/4 v1, 0x6

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
