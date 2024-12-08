.class Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "Meal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/yopeso/lieferando/model/meal/Meal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/yopeso/lieferando/model/meal/Meal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$1;->this$1:Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;

    .line 402
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
