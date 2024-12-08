.class Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$1;
.super Ljava/lang/Object;
.source "MealDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    sget v4, Lcom/yopeso/lieferando/R$string;->additives_url:I

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method
