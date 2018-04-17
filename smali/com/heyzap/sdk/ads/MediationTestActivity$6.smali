.class Lcom/heyzap/sdk/ads/MediationTestActivity$6;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;->makeSecondaryUI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

.field final synthetic val$adType:Landroid/widget/RadioGroup;

.field final synthetic val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$adType:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 300
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$adType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v1, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$000(Lcom/heyzap/sdk/ads/MediationTestActivity;Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 303
    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    if-eq v0, v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    .line 308
    new-instance v2, Lcom/heyzap/mediation/request/MediationRequest;

    sget-object v3, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-direct {v2, v0, v3, v4}, Lcom/heyzap/mediation/request/MediationRequest;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)V

    .line 309
    new-instance v0, Lcom/heyzap/mediation/MediationResult;

    invoke-direct {v0}, Lcom/heyzap/mediation/MediationResult;-><init>()V

    .line 310
    const-string v3, "mediationbannerid-00000000000000000000"

    iput-object v3, v0, Lcom/heyzap/mediation/MediationResult;->id:Ljava/lang/String;

    .line 312
    new-instance v3, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-direct {v3}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;-><init>()V

    .line 313
    sget-object v4, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v3, v4}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->setAdmobBannerSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 314
    sget-object v4, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v3, v4}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->setGenericBannerSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 316
    invoke-virtual {v2, v3}, Lcom/heyzap/mediation/request/MediationRequest;->setBannerOptions(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    .line 317
    invoke-virtual {v1, v2, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;

    move-result-object v0

    .line 319
    iget-object v1, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;

    invoke-direct {v2, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$6;)V

    iget-object v3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v3}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$200(Lcom/heyzap/sdk/ads/MediationTestActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    .line 354
    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$6$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$6$2;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$6;)V

    iget-object v2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v2}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$200(Lcom/heyzap/sdk/ads/MediationTestActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method
