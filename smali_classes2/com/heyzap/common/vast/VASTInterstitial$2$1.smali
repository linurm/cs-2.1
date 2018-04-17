.class Lcom/heyzap/common/vast/VASTInterstitial$2$1;
.super Ljava/lang/Object;
.source "VASTInterstitial.java"

# interfaces
.implements Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/vast/VASTInterstitial$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/common/vast/VASTInterstitial$2;


# direct methods
.method constructor <init>(Lcom/heyzap/common/vast/VASTInterstitial$2;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/heyzap/common/vast/VASTInterstitial$2$1;->this$1:Lcom/heyzap/common/vast/VASTInterstitial$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 135
    if-eqz p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial$2$1;->this$1:Lcom/heyzap/common/vast/VASTInterstitial$2;

    iget-object v0, v0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/VASTInterstitial;->access$000(Lcom/heyzap/common/vast/VASTInterstitial;I)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial$2$1;->this$1:Lcom/heyzap/common/vast/VASTInterstitial$2;

    iget-object v0, v0, Lcom/heyzap/common/vast/VASTInterstitial$2;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-static {v0}, Lcom/heyzap/common/vast/VASTInterstitial;->access$300(Lcom/heyzap/common/vast/VASTInterstitial;)V

    goto :goto_0
.end method
