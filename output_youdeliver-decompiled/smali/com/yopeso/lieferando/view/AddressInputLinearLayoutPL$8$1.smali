.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;
.super Ljava/util/TimerTask;
.source "AddressInputLinearLayoutPL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;->this$1:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;

    .line 344
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;)Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;->this$1:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;->this$1:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;)Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    move-result-object v0

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mActivityContext:Landroid/app/Activity;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1$1;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method
