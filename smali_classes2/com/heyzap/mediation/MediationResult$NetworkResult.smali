.class public Lcom/heyzap/mediation/MediationResult$NetworkResult;
.super Ljava/lang/Object;
.source "MediationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/MediationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkResult"
.end annotation


# instance fields
.field public final adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field public final creativeTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation
.end field

.field public final fetchResult:Lcom/heyzap/common/lifecycle/FetchResult;

.field public final id:Ljava/lang/String;

.field public final isVideo:Z

.field public final network:Ljava/lang/String;

.field public final ordinal:I

.field public final score:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/common/lifecycle/FetchResult;ILjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->id:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->score:Ljava/lang/Double;

    .line 42
    iput-object p5, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->network:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/common/lifecycle/FetchResult;

    .line 44
    iput-object p3, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 45
    iput p7, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->ordinal:I

    .line 46
    iput-boolean p4, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->isVideo:Z

    .line 47
    iput-object p8, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->creativeTypes:Ljava/util/Collection;

    .line 48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    const-string v0, "<NetworkResult: %s score: %s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->network:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "%.3f"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->score:Ljava/lang/Double;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
