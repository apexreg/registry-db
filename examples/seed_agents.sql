-- Example seed data for agent_registry
-- Note: embedding values are placeholders; in production, compute with all-MiniLM-L6-v2 (384-dim)

INSERT INTO agent_registry (ans_address, domain, capabilities_text, embedding, verified_wallet, public_key)
VALUES
(
  'agent://discovery.apexreg.org/search',
  'discovery.apexreg.org',
  'General-purpose agent discovery and semantic search across the ApexRegistry network.',
  NULL,  -- replace with actual 384-dim embedding
  NULL,
  'pk_placeholder_discovery'
),
(
  'agent://billing.apexreg.org/cardiology',
  'billing.apexreg.org',
  'Medical billing agent specialized in cardiology claims and insurance verification.',
  NULL,
  NULL,
  'pk_placeholder_billing_cardio'
),
(
  'agent://pay.stripe.com/charge',
  'pay.stripe.com',
  'Payment processing agent for creating and managing Stripe charges.',
  NULL,
  NULL,
  'pk_placeholder_stripe_charge'
),
(
  'agent://logistics.dhl.com/route',
  'logistics.dhl.com',
  'Logistics routing agent for optimizing international shipping paths.',
  NULL,
  NULL,
  'pk_placeholder_dhl_route'
),
(
  'agent://fuel.cameroon.aero/jet',
  'fuel.cameroon.aero',
  'Aviation fuel procurement agent for jet fuel purchases in Cameroon (500L+).',
  NULL,
  NULL,
  'pk_placeholder_fuel_jet'
);
