.class public Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;
.super Landroid/widget/ArrayAdapter;
.source "SearchActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewHolder"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/tablet/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterDwarler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "titles"    # [Ljava/lang/String;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    .line 899
    sget v0, Lcom/yopeso/lieferando/R$layout;->drawer_list_item:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 900
    iput-object p2, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;->context:Landroid/content/Context;

    .line 901
    iput-object p3, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;->titles:[Ljava/lang/String;

    .line 903
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "coverView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 909
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;->context:Landroid/content/Context;

    .line 910
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 909
    check-cast v0, Landroid/view/LayoutInflater;

    .line 911
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/yopeso/lieferando/R$layout;->drawer_list_item:I

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 914
    .local v1, "rowView":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 915
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;->titles:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    packed-switch p1, :pswitch_data_0

    .line 932
    :goto_0
    return-object v1

    .line 918
    :pswitch_0
    sget v3, Lcom/yopeso/lieferando/R$drawable;->ic_menu_how:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 921
    :pswitch_1
    sget v3, Lcom/yopeso/lieferando/R$drawable;->ic_menu_help:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 924
    :pswitch_2
    sget v3, Lcom/yopeso/lieferando/R$drawable;->ic_menu_imprint:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 927
    :pswitch_3
    sget v3, Lcom/yopeso/lieferando/R$drawable;->ic_menu_rate:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
