.class Lcom/heyzap/common/vast/VASTInterstitial$4;
.super Ljava/lang/Object;
.source "VASTInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/vast/VASTInterstitial;->sendError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/vast/VASTInterstitial;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/heyzap/common/vast/VASTInterstitial;I)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/heyzap/common/vast/VASTInterstitial$4;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    iput p2, p0, Lcom/heyzap/common/vast/VASTInterstitial$4;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    iget v1, p0, Lcom/heyzap/common/vast/VASTInterstitial$4;->val$error:I

    invoke-interface {v0, v1}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastError(I)V

    .line 193
    return-void
.end method
