.class Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3$1;
.super Ljava/lang/Object;
.source "MealExtrasDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3$1;->this$1:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3$1;->this$1:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->access$0(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dismiss()V

    .line 303
    return-void
.end method
