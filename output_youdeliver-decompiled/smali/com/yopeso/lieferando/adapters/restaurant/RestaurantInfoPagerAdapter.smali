.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "RestaurantInfoPagerAdapter.java"


# instance fields
.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mTabs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 25
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$array;->restaurant_info_title_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mTabs:[Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mTabs:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_3
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_4
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 47
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mTabs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mTabs:[Ljava/lang/String;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 68
    return-void
.end method
