.class public Lcom/yopeso/lieferando/model/user/UserData$Fidelity;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/user/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Fidelity"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mOpen:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "open"
    .end annotation
.end field

.field public mPoints:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "points"
    .end annotation
.end field

.field final synthetic this$0:Lcom/yopeso/lieferando/model/user/UserData;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData$Fidelity;->this$0:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method
