.class Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$5;
.super Ljava/lang/Object;
.source "RateAppFromPushDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    const-string v0, "rating_1_star"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackEventKahuna(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->access$1(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V

    .line 116
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->dismiss()V

    .line 118
    return-void
.end method
