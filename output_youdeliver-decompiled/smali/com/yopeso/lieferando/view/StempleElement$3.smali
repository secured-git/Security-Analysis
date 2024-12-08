.class Lcom/yopeso/lieferando/view/StempleElement$3;
.super Ljava/lang/Object;
.source "StempleElement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/StempleElement;->setDiscounts(Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/view/StempleElement;

.field private final synthetic val$callBack:Lcom/yopeso/lieferando/callback/StempelSelectedCallback;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/StempleElement;Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleElement$3;->this$0:Lcom/yopeso/lieferando/view/StempleElement;

    iput-object p2, p0, Lcom/yopeso/lieferando/view/StempleElement$3;->val$callBack:Lcom/yopeso/lieferando/callback/StempelSelectedCallback;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement$3;->val$callBack:Lcom/yopeso/lieferando/callback/StempelSelectedCallback;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement$3;->this$0:Lcom/yopeso/lieferando/view/StempleElement;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/StempleElement;->access$0(Lcom/yopeso/lieferando/view/StempleElement;)Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement$3;->this$0:Lcom/yopeso/lieferando/view/StempleElement;

    invoke-static {v2}, Lcom/yopeso/lieferando/view/StempleElement;->access$1(Lcom/yopeso/lieferando/view/StempleElement;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yopeso/lieferando/callback/StempelSelectedCallback;->onStempelSelected(Lcom/yopeso/lieferando/model/Stamp;Z)V

    .line 270
    return-void
.end method
