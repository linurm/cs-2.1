.class LHeyzap$6;
.super Ljava/lang/Object;
.source "Heyzap.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHeyzap;->HeyzapStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LHeyzap;


# direct methods
.method constructor <init>(LHeyzap;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, LHeyzap$6;->this$0:LHeyzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 222
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, LHeyzap$6;->this$0:LHeyzap;

    sget-object v2, LHeyzap$HeyzapCallback;->HZ_NETWORK_CALLBACK:LHeyzap$HeyzapCallback;

    invoke-virtual {v2}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 224
    return-void
.end method
