.class public final Lcom/heyzap/sdk/ads/MediationTestActivity;
.super Landroid/app/Activity;
.source "MediationTestActivity.java"


# instance fields
.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

.field private final contextReference:Lcom/heyzap/internal/ContextReference;

.field currentNetworks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field inSecondView:Z

.field private uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

.field upperCaseNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    .line 72
    new-instance v0, Lcom/heyzap/sdk/ads/MediationTestActivity$1;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    .line 88
    new-instance v0, Lcom/heyzap/internal/ContextReference;

    invoke-direct {v0}, Lcom/heyzap/internal/ContextReference;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->contextReference:Lcom/heyzap/internal/ContextReference;

    .line 89
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 90
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    .line 95
    new-instance v0, Lcom/heyzap/sdk/ads/MediationTestActivity$2;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$2;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->upperCaseNames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/ads/MediationTestActivity;Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->getAdUnit(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Lcom/heyzap/common/banner/BannerWrapper;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/heyzap/sdk/ads/MediationTestActivity;Lcom/heyzap/common/banner/BannerWrapper;)Lcom/heyzap/common/banner/BannerWrapper;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/ads/MediationTestActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private assembleUI()V
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    .line 126
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->upperCaseNames:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    new-instance v2, Lcom/heyzap/sdk/ads/MediationTestActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$3;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->setContentView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method private checkRemoteAvailability()V
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/heyzap/sdk/ads/HeyzapAds;->changeActivity(Landroid/app/Activity;)V

    .line 143
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$4;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V

    .line 196
    return-void
.end method

.method private getAdUnit(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    .line 519
    const-string v1, "Rewarded Video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    .line 526
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    const-string v1, "Video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    goto :goto_0

    .line 523
    :cond_2
    const-string v1, "Banner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    goto :goto_0
.end method


# virtual methods
.method public makeSecondaryUI(Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 199
    const/4 v7, 0x0

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    :goto_1
    move-object v7, v1

    goto :goto_0

    .line 205
    :cond_0
    if-nez v7, :cond_1

    .line 515
    :goto_2
    return-void

    .line 212
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    .line 214
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getLocalTextView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v9

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getManifestTextView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v10

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getRemoteTextView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v11

    .line 217
    new-instance v12, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 221
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    new-instance v15, Landroid/widget/RadioGroup;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v7}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getAllAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v16

    .line 225
    const/4 v1, 0x1

    .line 227
    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 228
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 229
    const-string v2, "Fetch"

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 232
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 233
    const-string v2, "Show"

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 236
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 237
    const-string v2, "Load"

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 240
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 241
    const-string v2, "Destroy"

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    if-eqz v16, :cond_7

    .line 249
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v8, v1

    :cond_2
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/internal/Constants$AdUnit;

    .line 250
    new-instance v18, Landroid/widget/RadioButton;

    invoke-direct/range {v18 .. v19}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 251
    const/high16 v2, 0x41a00000    # 20.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 252
    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_4

    .line 253
    const-string v2, "Interstitial"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_4
    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_3

    .line 265
    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$5;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/sdk/ads/MediationTestActivity$5;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 285
    if-eqz v8, :cond_a

    .line 286
    invoke-virtual/range {v18 .. v18}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 287
    const/4 v1, 0x0

    :goto_5
    move v8, v1

    .line 289
    goto :goto_3

    .line 254
    :cond_4
    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_5

    .line 255
    const-string v2, "Rewarded Video"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 256
    :cond_5
    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_6

    .line 257
    const-string v2, "Video"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 258
    :cond_6
    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_2

    .line 259
    const-string v2, "Banner"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 292
    :cond_7
    if-eqz v16, :cond_8

    invoke-virtual {v7}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkStatus()Z

    move-result v1

    if-nez v1, :cond_9

    .line 293
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 504
    :goto_6
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 508
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    invoke-virtual {v12, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/heyzap/sdk/ads/MediationTestActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 296
    :cond_9
    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v15, v7}, Lcom/heyzap/sdk/ads/MediationTestActivity$6;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v15}, Lcom/heyzap/sdk/ads/MediationTestActivity$7;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v15, v7}, Lcom/heyzap/sdk/ads/MediationTestActivity$8;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v15, v7}, Lcom/heyzap/sdk/ads/MediationTestActivity$9;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_a
    move v1, v8

    goto/16 :goto_5

    :cond_b
    move-object v1, v7

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 531
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-boolean v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    if-eqz v0, :cond_1

    .line 535
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->assembleUI()V

    goto :goto_0

    .line 537
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    new-instance v0, Lcom/heyzap/common/concurrency/HandlerExecutorService;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/heyzap/common/concurrency/HandlerExecutorService;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 108
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->contextReference:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0, p0}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterScanner;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->contextReference:Lcom/heyzap/internal/ContextReference;

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterScanner;-><init>(Lcom/heyzap/internal/ContextReference;)V

    .line 111
    invoke-virtual {v0}, Lcom/heyzap/mediation/adapter/AdapterScanner;->scan()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 112
    invoke-static {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->createAdapterFromKlass(Ljava/lang/Class;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v2

    .line 113
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setNetworkAdapter(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->assembleUI()V

    .line 120
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->checkRemoteAvailability()V

    .line 121
    return-void
.end method
