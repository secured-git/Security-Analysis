.class Lcom/yopeso/lieferando/model/user/Order$Deserializer$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/model/user/Order$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/yopeso/lieferando/model/user/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/meal/Meal;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/model/user/Order$Deserializer;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/model/user/Order$Deserializer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order$Deserializer$1;->this$1:Lcom/yopeso/lieferando/model/user/Order$Deserializer;

    .line 511
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
