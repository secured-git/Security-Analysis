.class Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$1;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->loadHtmlHeader(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
