.class public final Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ad/AdManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/reporting/AdReportManager;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/async/ScheduledPriorityExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$RetryMap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LoggedException$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    const-string v0, "com.vungle.publisher.ad.prepare.PrepareAdRunnable"

    const-string v1, "members/com.vungle.publisher.ad.prepare.PrepareAdRunnable"

    const/4 v2, 0x0

    const-class v3, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 44
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.vungle.publisher.ad.AdManager"

    const-class v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.vungle.publisher.reporting.AdReportManager"

    const-class v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.vungle.publisher.async.ScheduledPriorityExecutor"

    const-class v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.vungle.publisher.ad.prepare.PrepareViewableRunnable$Factory"

    const-class v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.vungle.publisher.ad.prepare.PrepareAdRunnable$RetryMap"

    const-class v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.vungle.publisher.db.model.LoggedException$Factory"

    const-class v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 51
    return-void
.end method

.method public final get()Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    invoke-direct {v0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;-><init>()V

    .line 75
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;)V

    .line 76
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->get()Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    move-result-object v0

    return-object v0
.end method

.method public final getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a:Lcom/vungle/publisher/event/EventBus;

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdManager;

    iput-object v0, p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->b:Lcom/vungle/publisher/ad/AdManager;

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/reporting/AdReportManager;

    iput-object v0, p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->c:Lcom/vungle/publisher/reporting/AdReportManager;

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    iput-object v0, p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable$Factory;

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$RetryMap;

    iput-object v0, p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->f:Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$RetryMap;

    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LoggedException$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->g:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    .line 92
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;)V

    return-void
.end method
