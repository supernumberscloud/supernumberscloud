<script>
	import { onMount } from 'svelte';

	// Simple animation for the hero text
	let visible = false;

	onMount(() => {
		visible = true;
	});
</script>

<svelte:head>
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
	<link href="https://fonts.googleapis.com/css2?family=Unbounded&display=swap" rel="stylesheet" />
</svelte:head>

<div
	class="flex min-h-screen flex-col items-center justify-center bg-black p-4 text-white sm:p-6 md:p-8"
>
	<main class="mx-auto w-full max-w-3xl">
		<!-- Hero Section -->
		<section class="py-8 md:py-12">
			<div class="space-y-3 text-center">
				<h1
					class={`text-3xl font-bold transition-opacity duration-1000 md:text-5xl ${visible ? 'opacity-100' : 'opacity-0'}`}
				>
					Super Numbers Cloud
				</h1>
				<p class="mt-2 text-lg text-white md:text-xl">Cloud solutions for your businesses</p>
			</div>
		</section>

		<!-- Description Section -->
		<section class="px-4 py-6">
			<div class="bg-black p-5 md:p-6">
				<p class="text-md mx-auto mb-6 max-w-2xl text-center text-white">
					Cloud implementation services tailored for your businesses.
				</p>

				<!-- Services Grid -->
				<div class="grid grid-cols-1 gap-4 md:grid-cols-3">
					<div class="bg-black p-4 text-center">
						<h3 class="mb-1 text-lg font-medium">Use ERPNext</h3>
						<p class="text-sm text-white opacity-80">
							Deploy the Enterprise Resource Planning (ERP) application for your businesses.
						</p>
					</div>

					<div class="bg-black p-4 text-center">
						<h3 class="mb-1 text-lg font-medium">Secure Access</h3>
						<p class="text-sm text-white opacity-80">
							Securely access your apps from anywhere with a private and encrypted network.
						</p>
					</div>

					<div class="bg-black p-4 text-center">
						<h3 class="mb-1 text-lg font-medium">Custom Apps</h3>
						<p class="text-sm text-white opacity-80">
							Design, develop, and deploy custom apps that fit your unique requirements.
						</p>
					</div>
				</div>
			</div>
		</section>
	</main>
</div>

<style>
	:global(body) {
		margin: 0;
		padding: 0;
		font-family: 'Unbounded';
	}

	h1,
	h2,
	h3,
	p {
		font-family: 'Unbounded';
	}
</style>
