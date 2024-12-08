.class Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$1;
.super Ljava/lang/Object;
.source "MealExtrasDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dismiss()V

    .line 154
    return-void
.end method
