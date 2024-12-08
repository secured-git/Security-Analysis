.class public Lcom/yopeso/lieferando/fragments/account/ProposeFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "ProposeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;
    }
.end annotation


# static fields
.field public static final STRING_LENGTH_REGEX:Ljava/lang/String; = ".{3,50}"

.field public static final TAG:Ljava/lang/String; = "ProposeFragment"


# instance fields
.field private mComment:Landroid/widget/EditText;

.field private mEmail:Landroid/widget/EditText;

.field private mHauseNr:Landroid/widget/EditText;

.field private mOrt:Landroid/widget/EditText;

.field private mService:Landroid/widget/EditText;

.field private mStreet:Landroid/widget/EditText;

.field private mSubmitButton:Landroid/widget/Button;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->cleanupInput()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Z
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->isFormValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mStreet:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mHauseNr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mComment:Landroid/widget/EditText;

    return-object v0
.end method

.method private cleanupInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mStreet:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mHauseNr:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mComment:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method private isFormValid()Z
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 144
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mEmail:Landroid/widget/EditText;

    sget v2, Lcom/yopeso/lieferando/R$string;->required:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 147
    const/4 v0, 0x0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    sget v2, Lcom/yopeso/lieferando/R$string;->required:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 153
    const/4 v0, 0x0

    .line 162
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    sget v2, Lcom/yopeso/lieferando/R$string;->required:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 165
    const/4 v0, 0x0

    .line 174
    :cond_2
    :goto_1
    return v0

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".{3,50}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    sget v2, Lcom/yopeso/lieferando/R$string;->required_length3_50_ort:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 158
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".{3,50}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    sget v2, Lcom/yopeso/lieferando/R$string;->required_length3_50_restaurant:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 170
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private loadNickname(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    .line 189
    .local v1, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    if-nez v1, :cond_1

    .line 190
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeEmail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeEmail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getTitle()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/yopeso/lieferando/R$string;->app_name:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->loadNickname(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ProposeSubmitButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mSubmitButton:Landroid/widget/Button;

    .line 83
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 204
    const-string v0, "Propose Keyboadr"

    const-string v1, "keyboard visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 210
    const-string v0, "Propose Keyboadr"

    const-string v1, "keyboard hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    sget v1, Lcom/yopeso/lieferando/R$layout;->propose_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    const-string v1, "ProposeFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ProposeEmail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mEmail:Landroid/widget/EditText;

    .line 68
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ProposeServiceName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mService:Landroid/widget/EditText;

    .line 69
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ProposeLocation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mOrt:Landroid/widget/EditText;

    .line 70
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ProposeStreet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mStreet:Landroid/widget/EditText;

    .line 71
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ProposeHouseNr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mHauseNr:Landroid/widget/EditText;

    .line 72
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ProposeComment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->mComment:Landroid/widget/EditText;

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 75
    return-void
.end method
