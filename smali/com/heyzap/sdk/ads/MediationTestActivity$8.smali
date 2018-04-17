.class Lcom/heyzap/sdk/ads/MediationTestActivity$8;
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
    .line 389
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$adType:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$adType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v1, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$000(Lcom/heyzap/sdk/ads/MediationTestActivity;Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 396
    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getFetchRequestStore()Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getFetchRequestStore()Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/FetchRequestStore;->add(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 407
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    new-array v2, v4, [Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isStarted(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    new-array v2, v4, [Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$8$1;

    invoke-direct {v1, p0, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity$8$1;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$8;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v2}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$200(Lcom/heyzap/sdk/ads/MediationTestActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 427
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$8$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$8$2;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
