.class public Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
.super Ljava/lang/Object;
.source "GoogleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/GoogleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddressComponent"
.end annotation


# instance fields
.field private mLongName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long_name"
    .end annotation
.end field

.field private mTypes:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "types"
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

.field final synthetic this$0:Lcom/yopeso/lieferando/model/GoogleData;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/GoogleData;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->this$0:Lcom/yopeso/lieferando/model/GoogleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->mLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/ArrayList;
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
    .line 126
    iget-object v0, p0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->mTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setLongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "long_name"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->mLongName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setTypes(Ljava/util/ArrayList;)V
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
    .line 130
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->mTypes:Ljava/util/ArrayList;

    .line 131
    return-void
.end method
