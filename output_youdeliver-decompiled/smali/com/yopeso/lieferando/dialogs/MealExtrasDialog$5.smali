.class Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$5;
.super Ljava/lang/Object;
.source "MealExtrasDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->addToCartButtonPressed(Z)V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dismiss()V

    .line 329
    return-void
.end method
