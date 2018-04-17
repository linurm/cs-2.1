.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;
.super Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getProperties()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;-><init>()V

    .line 65
    const-string v0, "AdMob"

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;->marketingName:Ljava/lang/String;

    .line 66
    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;->marketingVersion:Ljava/lang/String;

    .line 67
    const-string v0, "admob"

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;->canonicalName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;->doesPerNetworkFetch:Z

    .line 69
    return-void
.end method
