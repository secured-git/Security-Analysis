.class public Lcom/yopeso/lieferando/net/Urls;
.super Ljava/lang/Object;
.source "Urls.java"


# static fields
.field public static final AUTHENTICATE:Ljava/lang/String; = "/authentication/"

.field public static final CDN_DELIVERY_AREA:Ljava/lang/String; = "/%s/mobile/areas.json"

.field public static final CDN_DISHCATEGORIES:Ljava/lang/String; = "/%s/mobile/meals.json"

.field public static final CDN_LOCATION:Ljava/lang/String; = "/location/cities/mobile/%s.json"

.field public static final CDN_LOCATION_FROM_CITYID:Ljava/lang/String; = "/mobile/location/city/%s.json"

.field public static final CDN_LOCATION_PREMIUM:Ljava/lang/String; = "/location/cities/premium?plz=%s&restaurantId=%s"

.field public static final CDN_MAINTENANCE_ANDROID_EN:Ljava/lang/String; = "/maintenance_android_en.json"

.field public static final CDN_MAINTENANCE_ANDROID_EN_TA:Ljava/lang/String; = "/maintenance_android_en.json"

.field public static final CDN_MAINTENANCE_EN:Ljava/lang/String; = "/maintenance_en.json"

.field public static final CDN_MAINTENANCE_EN_TA:Ljava/lang/String; = "/maintenance_en.json"

.field public static final CDN_MEALS:Ljava/lang/String; = "/mobile/meal-%s.json"

.field public static final CDN_MEALS_SUBCAT:Ljava/lang/String; = "/mobile/meal-subcat-%s.json"

.field public static final CDN_OPENINGS:Ljava/lang/String; = "/%s/mobile/openings.json"

.field public static final CDN_PRINTERS:Ljava/lang/String; = "/printer/status.json"

.field public static final CDN_RATINGS:Ljava/lang/String; = "/%s/mobile/lastratings.json"

.field public static final CDN_RESTAURANT:Ljava/lang/String; = "/%s/mobile/restaurant.json"

.field public static final CDN_RESTAURANTS_LIST:Ljava/lang/String; = "/%s/mobile/restaurants.json"

.field public static final CDN_RESTAURANT_STAMPS:Ljava/lang/String; = "/%s/mobile/restaurants/discounts.json"

.field public static final CDN_SETTINGS:Ljava/lang/String; = "/config_android.json"

.field public static final CDN_SETTINGS_EN:Ljava/lang/String; = "/config_android_en.json"

.field public static final CDN_SETTINGS_EN_TA:Ljava/lang/String; = "/config_ta_android_en.json"

.field public static final CDN_SETTINGS_TA:Ljava/lang/String; = "/config_ta_android.json"

.field public static final CUSTOMER:Ljava/lang/String; = "/customer/"

.field public static final CUSTOMER_DISCOUNT:Ljava/lang/String; = "/customer/discount"

.field public static final CUSTOMER_FIDELITY:Ljava/lang/String; = "/customer/fidelity"

.field public static final CUSTOMER_LOCATION:Ljava/lang/String; = "/customer/location/"

.field public static final CUSTOMER_ORDER:Ljava/lang/String; = "/customer/order"

.field public static final CUSTOMER_PICTURE:Ljava/lang/String; = "/customer/picture/"

.field public static final CUSTOMER_REGISTER:Ljava/lang/String; = "/customer/register/simple"

.field public static final CUSTOMER_RESET_PASSWORD:Ljava/lang/String; = "/customer/resetpassword"

.field public static final CUSTOMER_SET_UNSET_FAVOURITE:Ljava/lang/String; = "/customer/favourite/"

.field public static final CUSTOMER_STAMP:Ljava/lang/String; = "/customer/stamps/current"

.field public static final CUSTOMER_STAMP_EXPIRED:Ljava/lang/String; = "/customer/stamps/expired"

.field public static final CUSTOMER_STAMP_USED:Ljava/lang/String; = "/customer/stamps/used"

.field public static final CUSTOMER_STATS:Ljava/lang/String; = "/customer/stats/"

.field public static final DISCOUNT:Ljava/lang/String; = "/discount?code=%s&serviceId=%s&cityId=%s&vendor=%s"

.field public static final FB_AUTHENTICATE:Ljava/lang/String; = "/authentication/facebook"

.field public static final FB_UNLINK:Ljava/lang/String; = "/customer/unlinkfacebook"

.field public static final GET_CITY_PL:Ljava/lang/String; = "/location/regions/%s.json"

.field public static final GET_STREET_PL:Ljava/lang/String; = "/%s.json"

.field public static final GOOGLE_API:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/geocode/json?latlng=%s,%s&sensor=false"

.field public static final ORDER:Ljava/lang/String; = "/order/"

.field public static final ORDER_RATE:Ljava/lang/String; = "/order/rate"

.field public static final RESRAURANT_RATINGS:Ljava/lang/String; = "/restaurant/%s/ratings?limit=50&page=1"

.field public static final RESRAURANT_RATINGS_CDN:Ljava/lang/String; = "/%s/mobile/ratings/1.json"

.field public static final RESTAURANT_INFO:Ljava/lang/String; = "/restaurant/%s"

.field public static final RESTAURANT_STAMP_CDN:Ljava/lang/String; = "/%s/discounts.json "

.field public static final SINGLE_ORDER:Ljava/lang/String; = "/customer/order?hash=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
