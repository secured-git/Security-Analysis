.class Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4$1;
.super Ljava/lang/Object;
.source "MealExtrasDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4$1;->this$1:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4$1;->this$1:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;->access$0(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dismiss()V

    .line 314
    return-void
.end method
