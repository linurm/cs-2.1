.class Lcom/heyzap/common/vast/VASTInterstitial$3;
.super Ljava/lang/Object;
.source "VASTInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/vast/VASTInterstitial;->sendReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/vast/VASTInterstitial;


# direct methods
.method constructor <init>(Lcom/heyzap/common/vast/VASTInterstitial;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/heyzap/common/vast/VASTInterstitial$3;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    invoke-interface {v0}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastReady()V

    .line 181
    return-void
.end method
