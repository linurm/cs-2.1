.class Lcom/heyzap/common/vast/VASTInterstitial$2;
.super Ljava/lang/Object;
.source "VASTInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/vast/VASTInterstitial;->loadVideoWithData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/vast/VASTInterstitial;

.field final synthetic val$xmlData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/common/vast/VASTInterstitial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    iput-object p2, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->val$xmlData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;

    iget-object v1, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-static {v1}, Lcom/heyzap/common/vast/VASTInterstitial;->access$100(Lcom/heyzap/common/vast/VASTInterstitial;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v1, Lcom/heyzap/common/vast/processor/VASTProcessor;

    invoke-direct {v1, v0}, Lcom/heyzap/common/vast/processor/VASTProcessor;-><init>(Lcom/heyzap/common/vast/processor/VASTMediaPicker;)V

    .line 128
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->val$xmlData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/vast/processor/VASTProcessor;->process(Ljava/lang/String;)I

    move-result v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/processor/VASTProcessor;->getModel()Lcom/heyzap/common/vast/model/VASTModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/VASTInterstitial;->access$202(Lcom/heyzap/common/vast/VASTInterstitial;Lcom/heyzap/common/vast/model/VASTModel;)Lcom/heyzap/common/vast/model/VASTModel;

    .line 131
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-static {v0}, Lcom/heyzap/common/vast/VASTInterstitial;->access$100(Lcom/heyzap/common/vast/VASTInterstitial;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-static {v1}, Lcom/heyzap/common/vast/VASTInterstitial;->access$200(Lcom/heyzap/common/vast/VASTInterstitial;)Lcom/heyzap/common/vast/model/VASTModel;

    move-result-object v1

    new-instance v2, Lcom/heyzap/common/vast/VASTInterstitial$2$1;

    invoke-direct {v2, p0}, Lcom/heyzap/common/vast/VASTInterstitial$2$1;-><init>(Lcom/heyzap/common/vast/VASTInterstitial$2;)V

    invoke-static {v0, v1, v2}, Lcom/heyzap/common/video/Cacher;->start(Landroid/content/Context;Lcom/heyzap/common/video/VideoModelInterface;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-static {v1, v0}, Lcom/heyzap/common/vast/VASTInterstitial;->access$000(Lcom/heyzap/common/vast/VASTInterstitial;I)V

    goto :goto_0
.end method
