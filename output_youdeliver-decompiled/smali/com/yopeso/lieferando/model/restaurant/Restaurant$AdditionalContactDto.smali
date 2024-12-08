.class public Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;
.super Ljava/lang/Object;
.source "Restaurant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/restaurant/Restaurant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdditionalContactDto"
.end annotation


# instance fields
.field email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field final synthetic this$0:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->this$0:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->name:Ljava/lang/String;

    return-object v0
.end method
