.class public Lcom/yopeso/lieferando/model/meal/DishCategory;
.super Lcom/yopeso/lieferando/model/meal/Menu;
.source "DishCategory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isMain:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main"
    .end annotation
.end field

.field private mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "daytime"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mImgLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private mMeals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation
.end field

.field private mMealsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meals"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mSubCategories:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subcategories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/yopeso/lieferando/model/meal/DishCategory$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/meal/DishCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yopeso/lieferando/model/meal/Menu;-><init>()V

    .line 58
    new-instance v0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;-><init>(Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yopeso/lieferando/model/meal/Menu;-><init>()V

    .line 58
    new-instance v0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;-><init>(Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mId:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mImgLink:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDescription:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMealsUrl:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/meal/Meal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 77
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/meal/DishCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 78
    return-void
.end method


# virtual methods
.method public containsDay(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 164
    iget-object v1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    iget-object v1, v1, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 164
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    .local v0, "i":I
    if-ne v0, p1, :cond_0

    .line 166
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public getClose()Ljava/util/Date;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    iget-object v0, v0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mCloseHours:Ljava/util/Date;

    return-object v0
.end method

.method public getDays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    iget-object v0, v0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mDays:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDaytTime()Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mId:J

    return-wide v0
.end method

.method public getImgLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mImgLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMeals()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMealsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMealsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen()Ljava/util/Date;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    iget-object v0, v0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mOpenHours:Ljava/util/Date;

    return-object v0
.end method

.method public getSubCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isOpen(Ljava/util/Date;Z)Z
    .locals 8
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "isHoliday"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 181
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 183
    if-eqz p2, :cond_4

    .line 184
    const/16 v5, 0xa

    .line 189
    .local v5, "today":I
    :goto_0
    iget-object v7, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    if-eqz v7, :cond_8

    .line 190
    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/model/meal/DishCategory;->containsDay(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 191
    iget-object v7, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    iget-object v7, v7, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mOpenHours:Ljava/util/Date;

    invoke-static {p1, v7, v6}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v3

    .line 192
    .local v3, "compareOpen":I
    iget-object v7, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDayTime:Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;

    iget-object v7, v7, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mCloseHours:Ljava/util/Date;

    invoke-static {p1, v7, v0}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v2

    .line 194
    .local v2, "compareClose":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    if-eq v3, v0, :cond_1

    :cond_0
    if-nez v3, :cond_6

    .line 195
    :cond_1
    iget-object v6, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "anyOpen":Z
    iget-object v6, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 231
    .end local v0    # "anyOpen":Z
    .end local v2    # "compareClose":I
    .end local v3    # "compareOpen":I
    :cond_3
    :goto_1
    return v0

    .line 186
    .end local v5    # "today":I
    :cond_4
    invoke-static {v1}, Lcom/yopeso/lieferando/util/OpeningUtils;->getWeekDay(Ljava/util/Calendar;)I

    move-result v5

    .restart local v5    # "today":I
    goto :goto_0

    .line 197
    .restart local v0    # "anyOpen":Z
    .restart local v2    # "compareClose":I
    .restart local v3    # "compareOpen":I
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 198
    .local v4, "dish":Lcom/yopeso/lieferando/model/meal/DishCategory;
    invoke-virtual {v4, p1, p2}, Lcom/yopeso/lieferando/model/meal/DishCategory;->isOpen(Ljava/util/Date;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    const/4 v0, 0x1

    .line 200
    goto :goto_1

    .end local v0    # "anyOpen":Z
    .end local v4    # "dish":Lcom/yopeso/lieferando/model/meal/DishCategory;
    :cond_6
    move v0, v6

    .line 207
    goto :goto_1

    .end local v2    # "compareClose":I
    .end local v3    # "compareOpen":I
    :cond_7
    move v0, v6

    .line 210
    goto :goto_1

    .line 221
    :cond_8
    iget-object v6, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 222
    const/4 v0, 0x0

    .line 223
    .restart local v0    # "anyOpen":Z
    iget-object v6, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 224
    .restart local v4    # "dish":Lcom/yopeso/lieferando/model/meal/DishCategory;
    invoke-virtual {v4, p1, p2}, Lcom/yopeso/lieferando/model/meal/DishCategory;->isOpen(Ljava/util/Date;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 225
    const/4 v0, 0x1

    .line 226
    goto :goto_1
.end method

.method public matchesQuery(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDescription:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mId:J

    .line 93
    return-void
.end method

.method public setImgLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgLink"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mImgLink:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setMeals(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "meals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    .line 133
    return-void
.end method

.method public setMealsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mealsUrl"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMealsUrl:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setSubCategories(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "category":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    .line 141
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mImgLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMealsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mMeals:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory;->mSubCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 89
    return-void
.end method
