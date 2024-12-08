.class Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$1;
.super Ljava/lang/Object;
.source "StemplesFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->sortByStamps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yopeso/lieferando/model/Stamp;Lcom/yopeso/lieferando/model/Stamp;)I
    .locals 2
    .param p1, "object1"    # Lcom/yopeso/lieferando/model/Stamp;
    .param p2, "object2"    # Lcom/yopeso/lieferando/model/Stamp;

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v0

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 142
    const/4 v0, -0x1

    .line 146
    :goto_0
    return v0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v0

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 144
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/Stamp;

    check-cast p2, Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$1;->compare(Lcom/yopeso/lieferando/model/Stamp;Lcom/yopeso/lieferando/model/Stamp;)I

    move-result v0

    return v0
.end method
