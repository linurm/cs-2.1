.class Lcom/jirbo/adcolony/n$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:D

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:I

.field l:Lcom/jirbo/adcolony/n$f;

.field m:Lcom/jirbo/adcolony/n$y;

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field o:Lcom/jirbo/adcolony/n$ag;

.field p:Lcom/jirbo/adcolony/n$i;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/n$e;->e:Z

    .line 25
    new-instance v0, Lcom/jirbo/adcolony/n$ag;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$ag;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Caching media"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 92
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$e;->a:Z

    if-nez v0, :cond_1

    .line 95
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$ag;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/n$ag;->a(I)Lcom/jirbo/adcolony/n$ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$ad;->n()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$e;->a:Z

    .line 46
    const-string v1, "log_screen_overlay"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$e;->b:Z

    .line 47
    const-string v1, "last_country"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->c:Ljava/lang/String;

    .line 48
    const-string v1, "last_ip"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->d:Ljava/lang/String;

    .line 50
    const-string v1, "collect_iap_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$e;->f:Z

    .line 51
    const-string v1, "media_pool_size"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/n$e;->g:D

    .line 52
    const-string v1, "log_level"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->h:Ljava/lang/String;

    .line 54
    const-string v1, "asset_tracking_interval"

    const/16 v2, 0x3c

    invoke-virtual {p1, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/n$e;->k:I

    .line 56
    const-string v1, "view_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    .line 57
    const-string v1, "cache_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    .line 59
    const-string v1, "hardware_acceleration_disabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$e;->e:Z

    .line 61
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    :cond_2
    const-string v1, "all"

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    :cond_4
    const-string v1, "all"

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    .line 70
    :cond_5
    new-instance v1, Lcom/jirbo/adcolony/n$f;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$f;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->l:Lcom/jirbo/adcolony/n$f;

    .line 71
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->l:Lcom/jirbo/adcolony/n$f;

    const-string v2, "tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$f;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Lcom/jirbo/adcolony/n$y;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$y;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->m:Lcom/jirbo/adcolony/n$y;

    .line 74
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->m:Lcom/jirbo/adcolony/n$y;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$y;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "console_messages"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->n:Ljava/util/ArrayList;

    .line 78
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Parsing zones"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 79
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    const-string v2, "zones"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->c(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$ag;->a(Lcom/jirbo/adcolony/ADCData$c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lcom/jirbo/adcolony/n$i;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$i;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$e;->p:Lcom/jirbo/adcolony/n$i;

    .line 82
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->p:Lcom/jirbo/adcolony/n$i;

    const-string v2, "device"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$i;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Finished parsing app info"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 86
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-boolean v1, p0, Lcom/jirbo/adcolony/n$e;->a:Z

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1, p2, p3}, Lcom/jirbo/adcolony/n$ad;->a(ZZ)Z

    move-result v0

    goto :goto_0
.end method
