.class public Lcom/yopeso/lieferando/model/user/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/user/UserData$Fidelity;,
        Lcom/yopeso/lieferando/model/user/UserData$Orders;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x74c39c89a569466eL


# instance fields
.field private earnedPoints:I

.field private mBirthDay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthday"
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private mFacebookId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookId"
    .end annotation
.end field

.field private mFacebookPostFavourite:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookPostFavourite"
    .end annotation
.end field

.field private mFacebookPostOrder:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookPostOrder"
    .end annotation
.end field

.field private mFacebookPostRate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookPostRate"
    .end annotation
.end field

.field private mFavouriteRestaurantIds:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favouriteRestaurantIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFavouriteRestaurantUrls:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favouriteRestaurantUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fidelity"
    .end annotation
.end field

.field private mGender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sex"
    .end annotation
.end field

.field private mImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture"
    .end annotation
.end field

.field private mLocations:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customerlocation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mNewsletter:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newsletter"
    .end annotation
.end field

.field private mNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field

.field public mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orders"
    .end annotation
.end field

.field private mPreName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prename"
    .end annotation
.end field

.field private mRestaurantOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tel"
    .end annotation
.end field

.field private mYdToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ydToken"
    .end annotation
.end field

.field private maxAvailablePoints:I

.field private ratedOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation
.end field

.field private unratedOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 650
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/UserData$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 658
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "m"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mGender:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;-><init>(Lcom/yopeso/lieferando/model/user/UserData;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    .line 119
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/user/UserData$Orders;-><init>(Lcom/yopeso/lieferando/model/user/UserData;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    .line 127
    iput v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->maxAvailablePoints:I

    .line 128
    iput v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->earnedPoints:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "m"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mGender:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;-><init>(Lcom/yopeso/lieferando/model/user/UserData;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    .line 119
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/user/UserData$Orders;-><init>(Lcom/yopeso/lieferando/model/user/UserData;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    .line 127
    iput v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->maxAvailablePoints:I

    .line 128
    iput v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->earnedPoints:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNickName:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mPreName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mEmail:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mTelephone:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mImgUrl:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mGender:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mBirthDay:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookId:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mYdToken:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNewsletter:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostFavourite:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostOrder:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_3
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostRate:Z

    .line 162
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;-><init>(Lcom/yopeso/lieferando/model/user/UserData;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    .line 163
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mPoints:I

    .line 164
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mOpen:I

    .line 166
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/model/user/UserData$Orders;-><init>(Lcom/yopeso/lieferando/model/user/UserData;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    .line 167
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mCount:I

    .line 168
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mRated:I

    .line 169
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mRateable:I

    .line 170
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$0(Lcom/yopeso/lieferando/model/user/UserData$Orders;J)V

    .line 171
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$1(Lcom/yopeso/lieferando/model/user/UserData$Orders;J)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->maxAvailablePoints:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->earnedPoints:I

    .line 176
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/user/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 181
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 185
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 187
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    sget-object v1, Lcom/yopeso/lieferando/model/user/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 192
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    if-nez v0, :cond_3

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    sget-object v1, Lcom/yopeso/lieferando/model/user/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 197
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/Stamp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 201
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    if-nez v0, :cond_5

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 207
    return-void

    :cond_6
    move v0, v2

    .line 157
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 158
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 159
    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 160
    goto/16 :goto_3
.end method


# virtual methods
.method public addFavourite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method public addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V
    .locals 6
    .param p1, "l"    # Lcom/yopeso/lieferando/model/user/Location;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 539
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 546
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 548
    .local v2, "r":Ljava/util/Random;
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 549
    .local v0, "id":I
    invoke-virtual {p1, v0}, Lcom/yopeso/lieferando/model/user/Location;->setId(I)V

    .line 551
    .end local v0    # "id":I
    .end local v2    # "r":Ljava/util/Random;
    :cond_2
    invoke-static {p2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackAddAddress(Landroid/content/Context;)V

    .line 552
    const-class v3, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addLocation:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    return-void

    .line 540
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Location;

    .line 541
    .local v1, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_0
.end method

.method public canCollect(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 486
    .local v0, "set":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 491
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 486
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/Stamp;

    .line 487
    .local v1, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->canCollect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public deleteLocation(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 1
    .param p1, "l"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mBirthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getDataFirstOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-static {v0}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$2(Lcom/yopeso/lieferando/model/user/UserData$Orders;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/FormatUtils;->changeDateFormat(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataLastOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-static {v0}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$3(Lcom/yopeso/lieferando/model/user/UserData$Orders;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/FormatUtils;->changeDateFormat(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarnedPoints()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->earnedPoints:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookId:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookPostFavourites()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostFavourite:Z

    return v0
.end method

.method public getFacebookPostOrder()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostOrder:Z

    return v0
.end method

.method public getFacebookPostRate()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostRate:Z

    return v0
.end method

.method public getFavouriteRestaurantIds()Ljava/util/ArrayList;
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
    .line 381
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFavouriteRestaurantUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFidelity()Lcom/yopeso/lieferando/model/user/UserData$Fidelity;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    return-object v0
.end method

.method public getFidelityPoints()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mPoints:I

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mPreName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullStamps(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 443
    .local v1, "set":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 449
    return-object v0

    .line 443
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/Stamp;

    .line 444
    .local v2, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isReadyForUse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method public getHighestValue(I)Lcom/yopeso/lieferando/model/Stamp;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 429
    new-instance v1, Lcom/yopeso/lieferando/model/Stamp;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/Stamp;-><init>()V

    .line 430
    .local v1, "result":Lcom/yopeso/lieferando/model/Stamp;
    const/4 v0, -0x1

    .line 431
    .local v0, "maxValue":I
    iget-object v3, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    return-object v1

    .line 431
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/Stamp;

    .line 432
    .local v2, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getRestaurantId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 433
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v0

    .line 434
    move-object v1, v2

    goto :goto_0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxAvailablePoints()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->maxAvailablePoints:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsletter()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNewsletter:Z

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotFullStamps(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 463
    .local v1, "set":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    return-object v0

    .line 463
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/Stamp;

    .line 464
    .local v2, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isReadyForUse()Z

    move-result v4

    if-nez v4, :cond_0

    .line 465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOAPoints()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mOpen:I

    return v0
.end method

.method public getOrders()Lcom/yopeso/lieferando/model/user/UserData$Orders;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    return-object v0
.end method

.method public getOrdersCount()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mCount:I

    return v0
.end method

.method public getPreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mPreName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryLocation()Lcom/yopeso/lieferando/model/user/Location;
    .locals 3

    .prologue
    .line 625
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 625
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 626
    .local v0, "l":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getRateable()I
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mRateable:I

    return v0
.end method

.method public getRatedOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    return-object v0
.end method

.method public getRealNotFullStamps(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 475
    .local v1, "set":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 481
    return-object v0

    .line 475
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/Stamp;

    .line 476
    .local v2, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v4

    if-nez v4, :cond_0

    .line 477
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getStampCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStampsForRestaurant(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 425
    :cond_1
    return-object v0

    .line 419
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/Stamp;

    .line 420
    .local v1, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getRestaurantId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 421
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mTelephone:Ljava/lang/String;

    return-object v0
.end method

.method public getUnratedOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    return-object v0
.end method

.method public getYdToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mYdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getmRestaurantOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    return-object v0
.end method

.method public hasFacebookLinked()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestaurantFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFavourite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBirthDay"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mBirthDay:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setCountOrders(I)V
    .locals 1
    .param p1, "mCountOrders"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    iput p1, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mCount:I

    .line 528
    return-void
.end method

.method public setDataFirstOrder(Ljava/lang/Long;)V
    .locals 4
    .param p1, "mFirstOrder"    # Ljava/lang/Long;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$0(Lcom/yopeso/lieferando/model/user/UserData$Orders;J)V

    .line 504
    return-void
.end method

.method public setDataLastOrder(Ljava/lang/Long;)V
    .locals 4
    .param p1, "mLastOrder"    # Ljava/lang/Long;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$1(Lcom/yopeso/lieferando/model/user/UserData$Orders;J)V

    .line 512
    return-void
.end method

.method public setEarnedPoints(I)V
    .locals 0
    .param p1, "earnedPoints"    # I

    .prologue
    .line 611
    iput p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->earnedPoints:I

    .line 612
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mEmail:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setFacebookId(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookId"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookId:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setFacebookPostFavourites(Z)V
    .locals 0
    .param p1, "postFavourites"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostFavourite:Z

    .line 326
    return-void
.end method

.method public setFacebookPostOrder(Z)V
    .locals 0
    .param p1, "postOrder"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostOrder:Z

    .line 342
    return-void
.end method

.method public setFacebookPostRate(Z)V
    .locals 0
    .param p1, "postRate"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostRate:Z

    .line 334
    return-void
.end method

.method public setFavouriteRestaurantIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    .line 378
    return-void
.end method

.method public setFavouriteRestaurantUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    .line 386
    return-void
.end method

.method public setFidelity(Lcom/yopeso/lieferando/model/user/UserData$Fidelity;)V
    .locals 0
    .param p1, "fidelity"    # Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    .line 354
    return-void
.end method

.method public setFidelityPoints(I)V
    .locals 1
    .param p1, "fidelityPoints"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    iput p1, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mPoints:I

    .line 350
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mGender:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mImgUrl:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setLocations(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "mLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Location;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    .line 406
    return-void
.end method

.method public setMaxAvailablePoints(I)V
    .locals 0
    .param p1, "maxAvailablePoints"    # I

    .prologue
    .line 603
    iput p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->maxAvailablePoints:I

    .line 604
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setNewsletter(Z)V
    .locals 0
    .param p1, "newsletter"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNewsletter:Z

    .line 318
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNickName:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setOAPoints(I)V
    .locals 1
    .param p1, "oAPoints"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    iput p1, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mOpen:I

    .line 374
    return-void
.end method

.method public setOrders(Lcom/yopeso/lieferando/model/user/UserData$Orders;)V
    .locals 0
    .param p1, "orders"    # Lcom/yopeso/lieferando/model/user/UserData$Orders;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    .line 358
    return-void
.end method

.method public setPreName(Ljava/lang/String;)V
    .locals 0
    .param p1, "preName"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mPreName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setRateable(I)V
    .locals 1
    .param p1, "rateable"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    iput p1, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mRateable:I

    .line 524
    return-void
.end method

.method public setRatedOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "ratedOrders":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Order;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    .line 588
    return-void
.end method

.method public setStampCards(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    .line 496
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephone"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mTelephone:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setUnratedOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "unratedOrders":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Order;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    .line 596
    return-void
.end method

.method public setmRestaurantOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "mRestaurantOrders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    .line 458
    return-void
.end method

.method public toOrderJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 575
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "name"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string v1, "prename"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->mPreName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v1, "email"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v1, "tel"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/UserData;->mTelephone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mPreName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mTelephone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mPreName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mTelephone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mGender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mBirthDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/UserData;->getYdToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mNewsletter:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostFavourite:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostOrder:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 227
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFacebookPostRate:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mPoints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFidelity:Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->mOpen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mRated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    iget v0, v0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mRateable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-static {v0}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$2(Lcom/yopeso/lieferando/model/user/UserData$Orders;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mOrders:Lcom/yopeso/lieferando/model/user/UserData$Orders;

    invoke-static {v0}, Lcom/yopeso/lieferando/model/user/UserData$Orders;->access$3(Lcom/yopeso/lieferando/model/user/UserData$Orders;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->maxAvailablePoints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->earnedPoints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->ratedOrders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->unratedOrders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 244
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 245
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mFavouriteRestaurantUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 247
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/UserData;->mRestaurantOrders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 250
    return-void

    :cond_0
    move v0, v2

    .line 224
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 225
    goto :goto_1

    :cond_2
    move v0, v2

    .line 226
    goto :goto_2

    :cond_3
    move v1, v2

    .line 227
    goto :goto_3
.end method
