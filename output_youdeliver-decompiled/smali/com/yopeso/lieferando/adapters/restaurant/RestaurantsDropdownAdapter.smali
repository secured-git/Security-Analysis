.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "RestaurantsDropdownAdapter.java"


# instance fields
.field private mTabs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$array;->dropdown_title_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownAdapter;->mTabs:[Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownAdapter;->mTabs:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;

    invoke-direct {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;-><init>()V

    goto :goto_0

    .line 31
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->getInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_2
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;

    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;-><init>()V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownAdapter;->mTabs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownAdapter;->mTabs:[Ljava/lang/String;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
