.class Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$2;
.super Ljava/lang/Object;
.source "RestaurantInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$2;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$2;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->dismiss()V

    .line 176
    return-void
.end method
